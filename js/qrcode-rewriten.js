var qrcode = {};
qrcode.imagedata = null;
qrcode.context = null;

qrcode.width = 0;
qrcode.height = 0;
qrcode.qrCodeSymbol = null;
qrcode.debug = false;
qrcode.maxImgSize = 1024 * 1024;
qrcode.canvasElement = null;
qrcode.ready = false;
qrcode.sizeOfDataLengthInfo = [[10, 9, 8, 8], [12, 11, 16, 10], [14, 13, 16, 12]];

qrcode.decode = function () {

	qrcode.imagedata = qrcode.context.getImageData(0, 0, qrcode.width, qrcode.height);

	qrcode.pixeldata.set(qrcode.imagedata.data);
	qrcode.decodeWasm();

	qrcode.imagedata.data.set(qrcode.pixeldata);
	qrcode.context.putImageData(qrcode.imagedata, 0, 0);

	var resultBytes = qrcode.getResultBytes();
	var versionNumber = qrcode.getVersionNumber();
	var bits = qrcode.getECLevelBits();
	var reader = new QRCodeDataBlockReader(resultBytes, versionNumber, bits);
	var data = reader.DataByte;
	var str = '';
	for (var i = 0; i < data.length; i++) {
		for (var j = 0; j < data[i].length; j++)
			str += String.fromCharCode(data[i][j]);
	}

	qrcode.result = qrcode.decode_utf8(str);

	if (qrcode.callback != null)
		qrcode.callback(qrcode.result);
	return qrcode.result;


}


qrcode.isUrl = function (s) {
	var regexp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
	return regexp.test(s);
}

qrcode.decode_url = function (s) {
	var escaped = '';
	try {
		escaped = escape(s);
	}
	catch (e) {
		// console.log(e);
		escaped = s;
	}
	var ret = '';
	try {
		ret = decodeURIComponent(escaped);
	}
	catch (e) {
		// console.log(e);
		ret = escaped;
	}
	return ret;
}

qrcode.decode_utf8 = function (s) {
	if (qrcode.isUrl(s))
		return qrcode.decode_url(s);
	else
		return s;
}

qrcode.setCanvasElement = function (element) {
	qrcode.canvasElement = element;
	qrcode.context = element.getContext('2d');
	qrcode.updateCanvas();
}
qrcode.updateCanvas = function () {
	qrcode.width = qrcode.canvasElement.width;
	qrcode.height = qrcode.canvasElement.height;
	if (qrcode.ready)
		qrcode.setPixelData();
}

qrcode.load = (() => {

	let imports = {
		env: {
			memory: new WebAssembly.Memory({ initial: 1024 }),
			printNum(n) {
				console.log("Num", n);
			},
			drawPoint(x, y) {

				qrcode.context.fillRect(x, y, 10, 10); // fill in the pixel at (10,10)
			},
			fsqrt: Math.sqrt,
			round: Math.round
		}
	}


	WebAssembly.instantiateStreaming(
		fetch("/qrcode.wasm"), imports
	).then(({ instance }) => {
		qrcode.getResultBytes = function () {
			return new Uint8Array(imports.env.memory.buffer, instance.exports.get_bytes(), instance.exports.get_size());
		}

		qrcode.getVersionNumber = instance.exports.getVersionNumber;

		qrcode.getECLevelBits = instance.exports.getECLevelBits;

		qrcode.instance = instance;
		qrcode.get_int = instance.exports.get_int;
		qrcode.decodeWasm = instance.exports.decode;

		var exportBitmap;

		qrcode.setPixelData = function () {
			const imageIndex = instance.exports.setImageSize(qrcode.width, qrcode.height);
			const imageSize = instance.exports.getImageSize();
			qrcode.pixeldata = new Uint32Array(imports.env.memory.buffer, imageIndex, imageSize);
			exportBitmap = new Uint32Array(imports.env.memory.buffer, instance.exports.getBitMap(), qrcode.width * qrcode.height);
		}

		qrcode.imageToBitmap = function () {
			instance.exports.imageToBitmap();
			return exportBitmap;
		}
		if (qrcode.context)
			qrcode.setPixelData();
		qrcode.ready = true;
	});
})();







function QRCodeDataBlockReader(blocks, version, numErrorCorrectionCode) {
	this.blockPointer = 0;
	this.bitPointer = 7;
	this.dataLength = 0;
	this.blocks = blocks;
	this.numErrorCorrectionCode = numErrorCorrectionCode;
	if (version <= 9)
		this.dataLengthMode = 0;
	else if (version >= 10 && version <= 26)
		this.dataLengthMode = 1;
	else if (version >= 27 && version <= 40)
		this.dataLengthMode = 2;

	this.getNextBits = function (numBits) {
		var bits = 0;

		if (numBits < this.bitPointer + 1) {
			// next word fits into current data block
			var mask = 0;
			for (var i = 0; i < numBits; i++) {
				mask += (1 << i);
			}
			mask <<= (this.bitPointer - numBits + 1);

			bits = (this.blocks[this.blockPointer] & mask) >> (this.bitPointer - numBits + 1);
			this.bitPointer -= numBits;
			return bits;
		} else if (numBits < this.bitPointer + 1 + 8) {
			// next word crosses 2 data blocks
			var mask1 = 0;
			for (var i = 0; i < this.bitPointer + 1; i++) {
				mask1 += (1 << i);
			}
			bits = (this.blocks[this.blockPointer] & mask1) << (numBits - (this.bitPointer + 1));
			this.blockPointer++;
			bits += ((this.blocks[this.blockPointer]) >> (8 - (numBits - (this.bitPointer + 1))));

			this.bitPointer = this.bitPointer - numBits % 8;
			if (this.bitPointer < 0) {
				this.bitPointer = 8 + this.bitPointer;
			}
			return bits;
		} else if (numBits < this.bitPointer + 1 + 16) {
			// next word crosses 3 data blocks
			var mask1 = 0; // mask of first block
			var mask3 = 0; // mask of 3rd block
			//bitPointer + 1 : number of bits of the 1st block
			//8 : number of the 2nd block (note that use already 8bits because next word uses 3 data blocks)
			//numBits - (bitPointer + 1 + 8) : number of bits of the 3rd block
			for (var i = 0; i < this.bitPointer + 1; i++) {
				mask1 += (1 << i);
			}
			var bitsFirstBlock = (this.blocks[this.blockPointer] & mask1) << (numBits - (this.bitPointer + 1));
			this.blockPointer++;

			var bitsSecondBlock = this.blocks[this.blockPointer] << (numBits - (this.bitPointer + 1 + 8));
			this.blockPointer++;

			for (var i = 0; i < numBits - (this.bitPointer + 1 + 8); i++) {
				mask3 += (1 << i);
			}

			mask3 <<= 8 - (numBits - (this.bitPointer + 1 + 8));
			var bitsThirdBlock = (this.blocks[this.blockPointer] & mask3) >> (8 - (numBits - (this.bitPointer + 1 + 8)));

			bits = bitsFirstBlock + bitsSecondBlock + bitsThirdBlock;
			this.bitPointer = this.bitPointer - (numBits - 8) % 8;
			if (this.bitPointer < 0) {
				this.bitPointer = 8 + this.bitPointer;
			}

			return bits;
		} else {
			return 0;
		}
	};

	this.NextMode = function () {
		if ((this.blockPointer > this.blocks.length - this.numErrorCorrectionCode - 2))
			return 0;
		else
			return this.getNextBits(4);
	};

	this.getDataLength = function (modeIndicator) {
		var index = 0;
		while (true) {
			if ((modeIndicator >> index) == 1)
				break;
			index++;
		}

		return this.getNextBits(qrcode.sizeOfDataLengthInfo[this.dataLengthMode][index]);
	};

	this.getRomanAndFigureString = function (dataLength) {
		var length = dataLength;
		var intData = 0;
		var strData = '';
		var tableRomanAndFigure = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', '$', '%', '*', '+', '-', '.', '/', ':');

		do {
			if (length > 1) {
				intData = this.getNextBits(11);
				var firstLetter = Math.floor(intData / 45);
				var secondLetter = intData % 45;
				strData += tableRomanAndFigure[firstLetter];
				strData += tableRomanAndFigure[secondLetter];
				length -= 2;
			} else if (length == 1) {
				intData = this.getNextBits(6);
				strData += tableRomanAndFigure[intData];
				length -= 1;
			}
		} while (length > 0);

		return strData;
	};

	this.getFigureString = function (dataLength) {
		var length = dataLength;
		var intData = 0;
		var strData = '';
		do {
			if (length >= 3) {
				intData = this.getNextBits(10);
				if (intData < 100)
					strData += '0';
				if (intData < 10)
					strData += '0';
				length -= 3;
			}
			else if (length == 2) {
				intData = this.getNextBits(7);
				if (intData < 10)
					strData += '0';
				length -= 2;
			}
			else if (length == 1) {
				intData = this.getNextBits(4);
				length -= 1;
			}
			strData += intData;
		}
		while (length > 0);

		return strData;
	};

	this.get8bitByteArray = function (dataLength) {
		var length = dataLength;
		var intData = 0;
		var output = new Array();

		do {
			intData = this.getNextBits(8);
			output.push(intData);
			length--;
		} while (length > 0);

		return output;
	};

	this.getKanjiString = function (dataLength) {
		var length = dataLength;
		var intData = 0;
		var unicodeString = '';
		do {
			intData = getNextBits(13);
			var lowerByte = intData % 0xC0;
			var higherByte = intData / 0xC0;

			var tempWord = (higherByte << 8) + lowerByte;
			var shiftjisWord = 0;
			if (tempWord + 0x8140 <= 0x9FFC) {
				// between 8140 - 9FFC on Shift_JIS character set
				shiftjisWord = tempWord + 0x8140;
			} else {
				// between E040 - EBBF on Shift_JIS character set
				shiftjisWord = tempWord + 0xC140;
			}

			unicodeString += String.fromCharCode(shiftjisWord);
			length--;
		} while (length > 0);

		return unicodeString;
	};

	Object.defineProperty(this, 'DataByte', {
		get: function () {
			var output = new Array();
			var MODE_NUMBER = 1;
			var MODE_ROMAN_AND_NUMBER = 2;
			var MODE_8BIT_BYTE = 4;
			var MODE_KANJI = 8;
			do {
				var mode = this.NextMode();
				if (mode == 0) {
					if (output.length > 0)
						break;
					else
						throw 'Empty data block';
				}

				if (mode != MODE_NUMBER &&
					mode != MODE_ROMAN_AND_NUMBER &&
					mode != MODE_8BIT_BYTE &&
					mode != MODE_KANJI) {

					//mode = guessMode(mode);
					console.log("Mode", mode);
					throw 'Invalid mode: ' + mode + ' in (block:' + this.blockPointer + ' bit:' + this.bitPointer + ')';
				}

				var dataLength = this.getDataLength(mode);

				if (dataLength < 1)
					throw 'Invalid data length: ' + dataLength;
				switch (mode) {
					case MODE_NUMBER:
						var temp_str = this.getFigureString(dataLength);
						var ta = new Array(temp_str.length);
						for (var j = 0; j < temp_str.length; j++)
							ta[j] = temp_str.charCodeAt(j);
						output.push(ta);
						break;

					case MODE_ROMAN_AND_NUMBER:
						var temp_str = this.getRomanAndFigureString(dataLength);
						var ta = new Array(temp_str.length);
						for (var j = 0; j < temp_str.length; j++)
							ta[j] = temp_str.charCodeAt(j);
						output.push(ta);
						break;

					case MODE_8BIT_BYTE:
						var temp_sbyteArray3 = this.get8bitByteArray(dataLength);
						output.push(temp_sbyteArray3);
						break;

					case MODE_KANJI:
						var temp_str = this.getKanjiString(dataLength);
						output.push(temp_str);
						break;
				}
			} while (true);
			return output;

		}
	});
}

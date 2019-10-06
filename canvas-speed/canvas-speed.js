const canvas2 = document.querySelector('canvas');
const video = document.querySelector('video');
const canvas = document.createElement('canvas');

const ctx = canvas.getContext('2d');
const ctx2 = canvas2.getContext('2d');

function greyscale(data) {
	imageData.set(data);
	imageToGreyscale();
	greyscaleToBitmap();
	data.set(imageData);
}

let imageData;

async function init(x, y) {
	let imports = {
		env: {
			memory: new WebAssembly.Memory({ initial: 512 })
		}
	}


	const { instance } = await WebAssembly.instantiateStreaming(
		fetch("/greyscale.wasm"), imports
	);

	window.imageToGreyscale = instance.exports.imageToGreyscale;
	window.greyscaleToBitmap = instance.exports.greyscaleToBitmap;

	console.log(instance);

	instance.exports.setImageSize(x, y);


	const imageIndex = instance.exports.getImageIndex();
	const imageSize = instance.exports.getImageSize();

	imageData = new Uint8Array(imports.env.memory.buffer, imageIndex, imageSize);


	window.bufferImage = data => {
		data.set(imageData);
	}

	canvasUpdate();
}




navigator.mediaDevices.getUserMedia({
	audio: false,
	video: {
		facingMode: 'environment'
	}
})
	.then((stream) => {


		video.srcObject = stream;
		console.log(video);
		video.play();
	})
	.catch();
var offscreen;
video.onloadedmetadata = () => {
	canvas.style.width = video.videoWidth + 'px';
	canvas.style.height = video.videoHeight + 'px';
	canvas.width = video.videoWidth;
	canvas.height = video.videoHeight;

	canvas2.style.width = video.videoWidth + 'px';
	canvas2.style.height = video.videoHeight + 'px';
	canvas2.width = video.videoWidth;
	canvas2.height = video.videoHeight;

	init(video.videoWidth, video.videoHeight);
	console.log('started');
}


var imagedata;

function canvasUpdate() {
	ctx.clearRect(0, 0, video.videoWidth,
		video.videoHeight);
	ctx.drawImage(video, 0, 0,
		video.videoWidth,
		video.videoHeight);
	imagedata = ctx.getImageData(0, 0, video.videoWidth,
		video.videoHeight);

	greyscale(imagedata.data);

	ctx2.putImageData(imagedata, 0, 0);


	requestAnimationFrame(canvasUpdate);
}

function getPixel(x, y) {
	if (canvas.width < x) {
		throw 'point error';
	}
	if (canvas.height < y) {
		throw 'point error';
	}
	var point = (x * 4) + (y * canvas.width * 4);
	var p = (imagedata.data[point] * 33 + imagedata.data[point + 1] * 34 + imagedata.data[point + 2] * 33) / 100;
	return p;
}


function getMiddleBrightnessPerArea(image) {
	var numSqrtArea = 4;
	//obtain middle brightness((min + max) / 2) per area
	var areaWidth = Math.floor(canvas.width / numSqrtArea);
	var areaHeight = Math.floor(canvas.height / numSqrtArea);
	var minmax = new Array(numSqrtArea);
	for (var i = 0; i < numSqrtArea; i++) {
		minmax[i] = new Array(numSqrtArea);
		for (var i2 = 0; i2 < numSqrtArea; i2++) {
			minmax[i][i2] = new Array(0, 0);
		}
	}
	for (var ay = 0; ay < numSqrtArea; ay++) {
		for (var ax = 0; ax < numSqrtArea; ax++) {
			minmax[ax][ay][0] = 0xFF;
			for (var dy = 0; dy < areaHeight; dy++) {
				for (var dx = 0; dx < areaWidth; dx++) {
					var target = image[areaWidth * ax + dx + (areaHeight * ay + dy) * canvas.width];
					if (target < minmax[ax][ay][0])
						minmax[ax][ay][0] = target;
					if (target > minmax[ax][ay][1])
						minmax[ax][ay][1] = target;
				}
			}
			//minmax[ax][ay][0] = (minmax[ax][ay][0] + minmax[ax][ay][1]) / 2;
		}
	}
	var middle = new Array(numSqrtArea);
	for (var i3 = 0; i3 < numSqrtArea; i3++) {
		middle[i3] = new Array(numSqrtArea);
	}
	for (var ay = 0; ay < numSqrtArea; ay++) {
		for (var ax = 0; ax < numSqrtArea; ax++) {
			middle[ax][ay] = Math.floor((minmax[ax][ay][0] + minmax[ax][ay][1]) / 2);
			//Console.out.print(middle[ax][ay] + ",");
		}
		//Console.out.println("");
	}
	//Console.out.println("");

	return middle;
}


function grayScaleToBitmap(grayScale) {

	var middle = getMiddleBrightnessPerArea(grayScale);
	var sqrtNumArea = middle.length;
	var areaWidth = Math.floor(canvas.width / sqrtNumArea);
	var areaHeight = Math.floor(canvas.height / sqrtNumArea);
	var bitmap = new Array(canvas.height * canvas.width);

	for (var ay = 0; ay < sqrtNumArea; ay++) {
		for (var ax = 0; ax < sqrtNumArea; ax++) {
			for (var dy = 0; dy < areaHeight; dy++) {
				for (var dx = 0; dx < areaWidth; dx++) {
					bitmap[areaWidth * ax + dx + (areaHeight * ay + dy) * canvas.width] = (grayScale[areaWidth * ax + dx + (areaHeight * ay + dy) * canvas.width] < middle[ax][ay]) ? true : false;
				}
			}
		}
	}

	for (let y = 0; y < canvas.height; y++) {
		for (let x = 0; x < canvas.width; x++) {
			let v = bitmap[x + y * canvas.width] ? 0 : 255;

			var point = (x * 4) + (y * canvas.width * 4);
			imagedata.data[point] = v;
			imagedata.data[point + 1] = v;
			imagedata.data[point + 2] = v;

		}
	}
	return bitmap;
}

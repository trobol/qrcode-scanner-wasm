
function QRCodeScanner(canvas) {
	if (!(this instanceof QRCodeScanner))
		return new QRCodeScanner(canvas);

	this.timerCapture = null;



	this.canvasElem = canvas || document.createElement('canvas');
	qrcode.setCanvasElement(this.canvasElem);

	this.context = this.canvasElem.getContext('2d');

	this.stream = null;
	this.videoElem = null;

	this.onRead = null;
	this.onError = null;
	this.onStart = null;


	this.debug = false;
}


QRCodeScanner.prototype.start = function () {

	let self = this;
	navigator.mediaDevices.getUserMedia({
		audio: false,
		video: {
			facingMode: 'environment',
			aspectRatio: this.videoElem.offsetWidth / this.videoElem.offsetHeight
		}
	})
		.then((stream) => {

			self.stream = stream;

			self.videoElem.srcObject = stream;
			self.stream = stream;
			self.videoDimensions = true;

			self.videoElem.play();
			console.log(self.videoElem.videoWidth);


			self._captureToCanvas();
			//self.videoElem.play();
			self.onStart();

		})
		.catch(self.onError);

	this.videoElem.onloadedmetadata = () => {
		this.resizeCanvas();
	}
	return this;
}

QRCodeScanner.prototype.isCanvasSupported = function () {
	var elem = document.createElement('canvas');

	return !!(elem.getContext && elem.getContext('2d'));
};

QRCodeScanner.prototype.hasGetUserMedia = function () {

	if (navigator.mediaDevices === undefined) {
		navigator.mediaDevices = {};
	}

	if (navigator.mediaDevices.getUserMedia === undefined) {
		navigator.mediaDevices.getUserMedia = function (constraints) {

			// First get ahold of the legacy getUserMedia, if present
			var getUserMedia = navigator.webkitGetUserMedia || navigator.mozGetUserMedia;

			// Some browsers just don't implement it - return a rejected promise with an error
			// to keep a consistent interface
			if (!getUserMedia) {
				return false;
			}

			// Otherwise, wrap the call to the old navigator.getUserMedia with a Promise
			new Promise(function (resolve, reject) {
				getUserMedia.call(navigator, constraints, resolve, reject);
			});
		}

	}
	return true;
};

QRCodeScanner.prototype.resizeCanvas = function () {
	this.canvasElem.style.width = this.videoElem.videoWidth + 'px';
	this.canvasElem.style.height = this.videoElem.videoHeight + 'px';
	this.canvasElem.width = this.videoElem.videoWidth;
	this.canvasElem.height = this.videoElem.videoHeight;

	qrcode.updateCanvas();
}

QRCodeScanner.prototype._captureToCanvas = function () {
	if (qrcode.ready) {
		if (this.timerCapture)
			clearTimeout(this.timerCapture);

		if (this.videoElem.videoWidth && this.videoElem.videoHeight) {




			this.context.clearRect(0, 0, this.videoElem.videoWidth,
				this.videoElem.videoHeight);
			this.context.drawImage(this.videoElem, 0, 0,
				this.videoElem.videoWidth,
				this.videoElem.videoHeight);
			try {
				var decoded = qrcode.decode();

			} catch (e) {
				console.error(e);
			}

			if (decoded) {
				this.onRead(decoded);
			}



		}
	}
	this.timerCapture = setTimeout(() => {
		this._captureToCanvas();
	}, 500);
};


/**
 * Releases a video stream that was being
 * captured by prepareToVideo
 */
QRCodeScanner.prototype.stop = function () {
	if (this.stream) {
		this.videoElem.pause();
		this.stream.getTracks()[0].stop();
		this.stream = undefined;

	}

	if (this.timerCapture) {
		clearTimeout(this.timerCapture);
		this.timerCapture = undefined;
	}

	return this;
};


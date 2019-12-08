const video = document.querySelector('video');
const canvas = document.querySelector('canvas');


function greyscale(data) {
	imageData.set(data);
	imageToGreyscale();
	greyscaleToBitmap();
	data.set(imageData);
}

let imageData;
const scanner = new QRCodeScanner(canvas);
scanner.videoElem = video;

scanner.onStart = onStart;
scanner.onRead = onRead;
scanner.onError = onError;

scanner.start();

function onStart() {


}

function onRead(data) {
	console.log(data);
}
function onError(e) {
	console.error(e);
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

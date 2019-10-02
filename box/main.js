var capture = true;
window.onload = function () {
	document.getElementById('toggleCapture').onclick = () => {
		capture = !capture;
		if (capture)
			drawCanvas();
	};
	const video = document.getElementById('video');
	const canvas = document.getElementById('qr-canvas');
	const ctx = canvas.getContext('2d');
	var image = document.getElementById('source');
	var qrImage = document.getElementById('qr-code');
	// Get access to the camera
	if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
		console.log("trying to get media");
		navigator.mediaDevices.getUserMedia({ audio: false, video: true }).then(function (stream) {
			console.log("got media");
			video.srcObject = stream;
			video.play();
			var f = () => {
				if (video.videoWidth && video.videoHeight) {
					canvas.width = video.videoWidth;
					canvas.height = video.videoHeight;
					drawCanvas();
					readCanvas();
				} else {
					setTimeout(f, 100);
				}
			};
			f();
		});
	} else {
		console.error("cant get media");
	}
	var info, tries = 0;
	var lastWidth = 0, lastHeight = 0;
	var i = 0;
	function drawCanvas() {
		ctx.clearRect(0, 0, video.videoWidth,
			video.videoHeight);
		ctx.drawImage(video, 0, 0,
			video.videoWidth,
			video.videoHeight);

		let rot = Math.PI * i;
		ctx.translate(canvas.width / 2, canvas.height / 2);
		ctx.rotate(rot);
		//ctx.drawImage(qrImage, -qrImage.width / 4, -qrImage.height / 4, qrImage.width / 2, qrImage.height / 2);
		ctx.rotate(-rot);
		ctx.translate(-canvas.width / 2, -canvas.height / 2);
		i += 0.005;

		readCanvas();
		if (info) {

			var a1 = info.TopRight.X - info.TopLeft.X
			b1 = info.TopRight.Y - info.TopLeft.Y,
				width = Math.sqrt(a1 * a1 + b1 * b1),
				a2 = info.TopLeft.Y - info.BottomLeft.Y,
				b2 = info.TopLeft.X - info.BottomLeft.X,
				height = Math.sqrt(a2 * a2 + b2 * b2),
				x = info.TopLeft.X,
				y = info.TopLeft.Y;


			if ((lastHeight > 0 && lastWidth > 0)) {
				if (Math.abs(lastHeight - height) > 10 || Math.abs(lastWidth - width) > 10) {
					height = lastHeight;
					width = lastWidth;
				}
			}
			lastWidth = width;
			lastHeight = height;
			var x1 = info.TopRight.X - canvas.width / 2,
				x2 = info.BottomLeft.X - canvas.width / 2,
				y1 = info.TopRight.Y - canvas.height / 2,
				y2 = info.BottomLeft.Y - canvas.height / 2;
			let a = x1 - x2,
				b = y1 - y2;



			var pX = Math.sqrt(a * a);
			var pY = Math.sqrt(b * b);


			var angleInRadians = Math.atan2(b, a) + Math.PI / 4.5;

			let sin = Math.sin(angleInRadians),
				cos = Math.cos(angleInRadians);
			/*	
			x1 = info.TopLeft.X * cos + info.TopLeft.Y * sin;
			y1 = -info.TopLeft.X * sin + info.TopLeft.Y * cos;

			x2 = info.TopRight.X * cos + info.TopRight.Y * sin;
			y2 = -info.TopRight.X * sin + info.TopRight.Y * cos;

			x3 = info.BottomLeft.X * cos + info.BottomLeft.Y * sin;
			y3 = -info.BottomLeft.X * sin + info.BottomLeft.Y * cos;
			*/
			ctx.fillStyle = "red";
			ctx.fillRect(x1 + canvas.width / 2, y1 + canvas.height / 2, 10, 10);
			ctx.fillStyle = "green";
			ctx.fillRect(x2 + canvas.width / 2, y2 + canvas.height / 2, 10, 10);
			//ctx.fillStyle = "blue";
			//ctx.fillRect(x3, y3, 10, 10);

			ctx.beginPath();
			ctx.moveTo(info.BottomLeft.X, info.BottomLeft.Y);
			ctx.lineTo(info.BottomLeft.X, info.TopRight.Y);
			ctx.lineTo(info.TopRight.X, info.TopRight.Y);
			ctx.strokeStyle = "red";
			ctx.stroke();
			//var angleInRadians = Math.atan((info.TopRight.Y - info.TopLeft.Y) / width);
			console.log(angleInRadians);
			ctx.translate(canvas.width / 2, canvas.height / 2);
			ctx.rotate(angleInRadians);
			ctx.translate(-width / 2, -height / 2);
			ctx.drawImage(image, 0, 0, width, height);
			ctx.translate(width / 2, height / 2);
			ctx.rotate(-angleInRadians);
			ctx.translate(-canvas.width / 2, -canvas.height / 2);

		}

		if (capture)
			window.requestAnimationFrame(drawCanvas);

	}

	function readCanvas() {
		try {
			info = qrcode.getLocation(canvas, ctx);
			console.log(info);
			tries = 0;
		} catch (msg) {
			console.log(msg);
			tries++;
			if (tries > 5) {
				info = null;
				lastWidth = 0;
				lastHeight = 0;
			}

		}
		//setTimeout(readCanvas, 500);
	}
}
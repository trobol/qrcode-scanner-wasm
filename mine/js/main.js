
var compileMemory = (function () {
	let memoryManager;
	return function (env) {
		//manager already loaded
		if (memoryManager) {

			return new Promise((resolve, reject) => {
				let instance = WebAssembly.instance(
					memoryManager,
					{
						env: {
							memory: env.memory
						}
					}
				);
				env._malloc = instance.exports.malloc;
				env._free = instance.exports.free;
				resolve(instance);
			});

		} else {



			return WebAssembly.instantiateStreaming(fetch("/memory.wasm"), {
				env: {
					memory: env.memory
				}
			}).then(({ module, instance }) => {
				memoryManager = module;
				env._malloc = instance.exports.malloc;
				env._free = instance.exports.free;
				return instance;
			});
		}
	}
})();
	
let QRCode = (function(){
	let exports,
	imgData,
	qrcodeData,
	imports = {
		draw() {
			var canvas = document.createElement('canvas');
			var context = canvas.getContext('2d');

			canvas.width = imgData.width;
			canvas.height = imgData.height;
			let length = imgData.width * imgData.height;
			let data = new Uint8ClampedArray(length*4);
			if (qrcodeData.length == length) {
				//i -> r g b a
				for (let i = 0; i < qrcodeData.length; i++) {
					data[i] = data[i + 1] = data[i + 2] = qrcodeData[i];

					data[i+3] = 1;
				}
			} else if (qrcodeData.length == length * 3) {
				// r g b -> r g b a
				for (let i = 0; i < qrcodeData.length; i) {
					data[i*4] = qrcodeData[i*4];
					data[i*4 + 1] = qrcodeData[i*4+1];
					data[i*4 + 2] = qrcodeData[i*4+2];
					data[i*4 + 3] = 1;
				}
			}
			imgData.data = data;
			context.putImageData(imgData, 0, 0);
			document.body.append(canvas);
		}
	};
	loadWebAssembly('/build/qrcode-reader.wasm').then(({ instance }) => {
		exports = instance.exports;
	});
	let m = new WebAssembly.Memory({ initial: 256 });

	
	function decode(src) {
		var image = new Image();
		image.onload = function () {

			var canvas = document.createElement('canvas');
			var context = canvas.getContext('2d');

			canvas.width = image.width;
			canvas.height = image.height;

			context.drawImage(image, 0, 0, image.width, image.height);

			imgData = context.getImageData(0, 0, image.width, image.height);
			qrcodeData = imgData.data;	
			imports.draw();
			
			var data = qrcode.imagedata.data,
				length = width * height * 4;

			var inputPtr = exports.setImageData(length),
				input = new Uint8ClampedArray(m.buffer, inputPtr, length);

			input.set(imgData.data);
			
			exports.decode(img.height, img.height);
		

			var outputPtr = exports.getImageData(),
				output = new Uint8ClampedArray(m.buffer, outputPtr, length / 4);
			
		}
		image.src = "/qrcode.png";
	}
	return {
		decode
	}
}) ();

QRCode.decode();

function loadWebAssembly(filename, imports) {
	imports = imports || {};
	imports.env = imports.env || {};
	if (!imports.env.memory) {
		
		//assign default memory
		imports.env.memory = new WebAssembly.Memory({ initial: 256 });
	}

	//add new memory manager to the assigned memory
	return compileMemory(imports.env).then(() => {

		// Create a WebAssembly instance with our compiled
		// module and pass in our import object
		let promise = new Promise((resolve, reject) => {
			fetch(filename).then((response) => {
				if (!response.ok) {

					response.text().then((text) => {
						console.error(text);
					});
				}
				resolve(response);
			});
		});


		return WebAssembly.instantiateStreaming(promise, imports);
	});
}

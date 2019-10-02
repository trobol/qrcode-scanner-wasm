
let length = 1000;
let memory;
let i = {
	env: {}
};
window.onload = () => {
	let p = new Promise((resolve, reject) => {
		qrcode.decode('/qrcode.png', (a, result) => {
			console.log(result);
			resolve(result);
		});
	});
	let m = new WebAssembly.Memory({ initial: 256 });
	i.env.memory = m;
	compileMemory(m).then(() => {
		i.env._free = _free;
		i.env._malloc = _malloc;
		loadWebAssembly('/build/qrcode.wasm', i).then(({ instance }) => {
			console.log(instance);

			var string = "hi";
			// Grab our exports and call our main function
			var exports = instance.exports;
			p.then(() => {

				var image = new Image();
				image.onload = function () {
					var canvas_qr = document.createElement('canvas');
					var context = canvas_qr.getContext('2d');
					var height = image.height;
					var width = image.width;

					canvas_qr.width = width;
					canvas_qr.height = height;

					context.drawImage(image, 0, 0, canvas_qr.width, canvas_qr.height);

					var imagedata = context.getImageData(0, 0, canvas_qr.width, canvas_qr.height);


					var data = qrcode.imagedata.data,
						length = width * height * 4;

					var inputPtr = exports.setImageData(length),
						input = new Uint8ClampedArray(m.buffer, inputPtr, length);

					input.set(imagedata.data);
					console.log(imagedata.data);
					exports.decode(width, height);
					console.log(input);

					var outputPtr = exports.getImageData(),
						output = new Uint8ClampedArray(m.buffer, outputPtr, length / 4);
					console.log(output);
				}
				image.src = "/qrcode.png";

			});
		});
	});
}
function loadWebAssembly(filename, imports) {
	imports = imports || {};
	imports.env = imports.env || {};
	if (!imports.env.memory) {
		// Setup our Memory import, initializing it
		// to use 256 pages of memory.
		imports.env.memory = new WebAssembly.Memory({ initial: 256 });
	}
	if (!imports.env.__indirect_function_table) {
		// Setup our Table with an inital size of 0,
		// 'anyfunc' is currently the option here
		imports.env.__indirect_function_table = new WebAssembly.Table({ initial: 0, element: 'anyfunc' });
	}


	imports.env.out = function consoleLogString(offset, length) {

		let a = new Float32Array(imports.env.memory.buffer, offset, length);
		console.log(a, offset, length);
	}
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

}
function compileMemory(m) {

	return WebAssembly.instantiateStreaming(fetch("memory.wasm"), {
		env: {
			memory: m
		}
	}).then(({ instance }) => {
		globalThis._malloc = instance.exports.malloc;
		globalThis._free = instance.exports.free;
	});
}

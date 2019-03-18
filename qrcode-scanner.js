
let length = 1000;
let memory;
let i = {};
window.onload = () =>{
	let p = new Promise((resolve, reject) => {
		qrcode.decode('/qrcode.png', (a, result) => {
			console.log(result);
			resolve(result);
		});
	});
	
	// Call our load function.
	loadWebAssembly('/qrcode-scanner.wasm', i).then(instance => {
		
		var string = "hi";
		// Grab our exports and call our main function
		var exports = instance.instance.exports;
		p.then(() => {
			
			
			var width = qrcode.imagedata.width,
			height = qrcode.imagedata.height,
			data = qrcode.imagedata.data,
			length = width * height;
			
			var inputPtr = exports.allocateCap(length*4),
			input =  new Int8Array(memory.buffer, inputPtr, length*4),
			outputPtr = exports.allocate(length),
			output =  new Int8Array(memory.buffer, outputPtr, length);
			
			// Copy data in to be used by WebAssembly.
			input.set(data);
			
			// Process the data in the array.
			instance.exports.processF32Array(myWasmArrayPtr, length);
			
			// Copy data out to JavaScript.
			myJSArray.set(myWasmArray);
			
			let arrayStart = exports.setup(length);
			let array = instance.env.memory.subarray(arrayStart, string.length);
			
			for(let i = 0; i < length; i++) {
				array[i] = Math.random;
			}
			
			var start = Date.now();
			
		});
	});
}
function loadWebAssembly(filename, imports) {
	return fetch(filename)
		.then(response => response.arrayBuffer())
		.then(buffer => WebAssembly.compile(buffer))
		.then(module => {
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
			return new WebAssembly.Instance(module, imports);
		});
}
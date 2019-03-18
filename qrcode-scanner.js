
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
function loadWebAssembly(fileName) {
	let i = {};
	i.env = {};
	i.global = {};
	return fetch(fileName)
	  .then(response => response.arrayBuffer())
	  .then(bits => WebAssembly.compile(bits))
	  .then(module => { return new WebAssembly.Instance(module, i) });
  };
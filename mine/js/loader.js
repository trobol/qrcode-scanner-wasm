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

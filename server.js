const http = require('http');
const url = require('url');
const fs = require('fs');
const path = require('path');
const { exec } = require('child_process');

// maps file extention to MIME types
const mimeType = {
	'.ico': 'image/x-icon',
	'.html': 'text/html',
	'.js': 'text/javascript',
	'.json': 'application/json',
	'.css': 'text/css',
	'.png': 'image/png',
	'.jpg': 'image/jpeg',
	'.wav': 'audio/wav',
	'.mp3': 'audio/mpeg',
	'.svg': 'image/svg+xml',
	'.pdf': 'application/pdf',
	'.doc': 'application/msword',
	'.eot': 'application/vnd.ms-fontobject',
	'.ttf': 'application/font-sfnt',
	'.wasm': 'application/wasm'
};
let wasmFiles = {
	"qrcode.wasm": "qrcode.cpp"
};

http.createServer(function (req, res) {
	console.log(`${req.method} ${req.url}`);

	// parse URL
	const parsedUrl = url.parse(req.url);

	// extract URL path
	// Avoid https://en.wikipedia.org/wiki/Directory_traversal_attack
	// e.g curl --path-as-is http://localhost:9000/../fileInDanger.txt
	// by limiting the path to current directory only
	const sanitizePath = path.normalize(parsedUrl.pathname).replace(/^(\.\.[\/\\])+/, '');
	let pathname = path.join(__dirname, sanitizePath);

	fs.exists(pathname, function (exist) {

		if (!exist) {
			// if the file is not found, return 404
			res.statusCode = 404;
			res.end(`File ${pathname} not found!`);
			return;
		}


		// if is a directory, then look for index.html
		if (fs.statSync(pathname).isDirectory()) {
			pathname += '/index.html';
		}


		let p = path.parse(pathname),
			ext = p.ext;
		if (ext == ".wasm" && wasmFiles[p.base]) {
			let sourceFile = wasmFiles[p.base];
			console.log(sourceFile + "->" + p.name);
			exec("wsl /mnt/c/wasmception/dist/bin/clang++ " +
				"--sysroot=/mnt/c/wasmception/sysroot/ " +
				` cpp/${sourceFile} -o build/${p.name}.wasm ` +
				"-nostartfiles -Wl,--no-entry,--export-dynamic " +
				"-Wl,--allow-undefined-file=main.syms,--import-memory " +
				"-Wl,--demangle,--no-entry,--no-threads -fno-exceptions", (err, stdout, stderr) => {
					if (err) {
						console.error(`Compilation Error`);
						res.statusCode = 500;
						res.end(`Compilation Error: ${err.message.slice(err.message.indexOf("\n"))}`);
						return;
					}
					console.log(stdout);
					console.log("recompiled");
					readFile();
				});

		} else {
			readFile();
		}

		function readFile() {

			// read file from file system
			fs.readFile(pathname, function (err, data) {
				if (err) {
					res.statusCode = 500;
					res.end(`Error getting the file: ${err}.`);
				} else {
					// based on the URL path, extract the file extention. e.g. .js, .doc, ...

					// if the file is found, set Content-type and send data
					res.setHeader('Content-type', mimeType[ext] || 'text/plain');
					res.end(data);
				}
			});
		}
	});


}).listen(80);

console.log(`Server listening`);
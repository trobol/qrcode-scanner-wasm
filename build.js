const minify = require('minify');
const fs = require('fs');
const p = require('path');
const { exec } = require('child_process');

const build_mode = process.argv[2] || 'release';

const source_path = 'src';
const build_path = 'build';


function findFiles(path = '') {
	return new Promise((resolve, reject) =>
		fs.readdir(source_path + path, { withFileTypes: true },
			(err, results) => {
				const promises = [];
				const files = [];
				if (err) console.error(err);
				else {
					results.forEach(f => {
						if (f.isDirectory()) {
							promises.push(findFiles(path + '/' + f.name));
						} else {
							if (p.extname(f.name) == '.js') {
								files.push(path + '/' + f.name);
							}
						}
					});
				}
				if (promises.length == 0) {
					resolve(files);
				} else {
					Promise.all(promises)
						.then(arrays => resolve(files.concat(...arrays)));
				}
			})
	);
}




exec('make',
	(error, stdout, stderr) => {

	});

findFiles()
	.then(files =>
		Promise.all(
			files.map(file => {

				const dest = build_path + file;
				const source = source_path + file;
				console.log(source, '->', dest);
				return minify(source)
					.then(output =>
						new Promise((resolve, reject) => {
							const dirname = p.dirname(source);
							fs.exists(dirname, exists => {
								const finish = err => {
									if (err) reject(err);
									else resolve(source);
								};
								const func = build_mode == 'debug' ?
									() => fs.copyFile(source, dest, finish) :
									() => fs.writeFile(source, output, { flag: 'w' }, finish);
								if (exists) {
									func();
								} else {
									fs.mkdir(dirname, { recursive: true }, func);
								}

							})
						}));
			}
			)
		))
	.then(files => {
		console.log(`Compiled ${files.length} file${files.length == 1 ? 's' : ''}`);
	})
	.catch(console.error);



const crypto = require('crypto');
const fs = require('fs');
const zlib = require('zlib');
const file = process.argv[2];

if (!file) {
	console.log('No \'file\' argument provided');
	process.exit();
}

const { Transform } = require('stream');
const reportProgress = new Transform({
	transform(chunk, encoding, callback) {
		process.stdout.write('.');
		callback(null, chunk);
	}
});

if (process.argv[3] !== '--decipher') {
	fs.createReadStream(file)
		.pipe(zlib.createGzip())
		.pipe(crypto.createCipher('aes192', 'top_secret'))
		.pipe(reportProgress)
		.pipe(fs.createWriteStream(file + '.zz'))
		.on('finish', () => console.log('Done'));
} else {
	fs.createReadStream(file)
		.pipe(crypto.createDecipher('aes192', 'top_secret'))
		.pipe(zlib.createGunzip())
		.pipe(reportProgress)
		.pipe(fs.createWriteStream(file.slice(0, -3)))
		.on('finish', () => console.log('Done'));
}

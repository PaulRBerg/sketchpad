const { Writable } = require('stream');

// #1
const outStream = new Writable({
	write(chunk, encoding, callback) {
		console.log(chunk.toString());
		callback();
	}
});

process.stdin.pipe(outStream);

// #2
// process.stdin.pipe(process.stdout)
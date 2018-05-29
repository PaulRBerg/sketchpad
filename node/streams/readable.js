const { Readable } = require('stream');

// #1
// const inStream = new Readable();
// inStream.push('ABCDEFGHIJKLM');
// inStream.push('NOPQRSTUVWXYZ');
// inStream.push('\n');
// inStream.push(null); // No more data
// inStream.pipe(process.stdout);

// #2
const inStreamFunc = new Readable({
	read(size) {
		this.push(String.fromCharCode(this.currentCharCode++));
		if (this.currentCharCode > 90) {
			this.push(null);
		}
	}
});

inStreamFunc.currentCharCode = 65; // ascii
inStreamFunc.pipe(process.stdout);
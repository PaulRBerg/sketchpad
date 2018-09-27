const net = require('net');
const spawn = require('child_process').spawn;

let bears = 0;

bears += 1;

if (process.argv[2] === 'child') {
	const pipe = new net.Socket({ fd: 3}); // third file descriptor according to stdio below
	pipe.write('killme');

	// console.log('child', bears);
} else {
	const child = spawn(process.execPath, [__filename, 'child'], {
		stdio: [null, null, null, 'pipe']
	});
	child.stdio[3].on('data', function (data) {
		if (data.toString() === 'killme') {
			console.log('RIP');
			child.kill();
		}
	});

	// console.log('parent', bears);

	// child.stdout.pipe(process.stdout);

	// child.stdout.on('data', (data) => {
	// 	console.log('from child', data.toString());
	// });
}
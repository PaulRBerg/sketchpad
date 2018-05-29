const spawn = require('child_process').spawn;

let bears = 1;

if (process.argv[2] === 'child') {
	console.log('I\'m inside the child');
} else {
	const child = spawn(process.execPath, [__filename, 'child'], {
		stdio: 'inherit'
	});

	// child.stdout.pipe(process.stdout);

	// child.stdout.on('data', (data) => {
	// 	console.log('from child', data.toString());
	// });
}
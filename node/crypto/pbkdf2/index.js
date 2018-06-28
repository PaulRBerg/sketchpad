const pbkdf2 = require('pbkdf2');

pbkdf2.pbkdf2('password', 'salt', 1, 32, 'sha512', (err, derivedKey) => {
	if (err) throw err;
	console.log(derivedKey.toString('hex'));
});
const BigNumber = require('bignumber.js');

const x = new BigNumber(123.4567);
console.log('x.toExponential()', x.toExponential());
console.log('x.c', x.c);
console.log('x.e', x.e);
console.log('x.s', x.s); // sign, 1 or -1
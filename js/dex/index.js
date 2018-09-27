const Table = require('cli-table');
const table = new Table();

table.push([
	'dex1',
	'dex2'
]);

console.log(table.toString());
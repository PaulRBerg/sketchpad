const createKeccakHash = require("keccak");

let hash = "";
function toChecksumAddress (address) {
	address = address.toLowerCase().replace("0x", "");
	hash = createKeccakHash("keccak256").update(address).digest("hex");
	let ret = "0x";

	for (let i = 0; i < address.length; i++) {
		if (parseInt(hash[i], 16) >= 8) {
			ret += address[i].toUpperCase();
		} else {
			ret += address[i];
		}
	}

	return ret;
}

const address = process.argv[2];
if (!address) {
	console.log("No address provided");
	process.exit(1)
}
const checksum = toChecksumAddress(address);

const Table = require('cli-table');
const table = new Table();
table.push(
	{ Initial: address },
	{ Hash: hash },
	{ Checksum: checksum },
	{ Checksummed: address === checksum ? "Yes" : "No"}
);

console.log(table.toString());
// import the path and the file system module
const path = require('path');
const fs = require('fs');
const solc = require('solc');

// resolve path to contracts
// __dirname = constant pointing to current directory (pwd)
const inbox_path = path.resolve(__dirname, 'contracts', 'Inbox.sol');
const contractSource = fs.readFileSync(inbox_path,'utf8')

console.log(solc.compile('contractSource',1));
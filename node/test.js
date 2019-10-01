var path = require("path")

var hello = "Hello from the NodeJS terminal."
console.log(`Printing Variable hello: ${hello}`);
console.log(`directory name: ` + __dirname);
console.log(`directory and file name: ` + __filename);

console.log(`Hello from file ${path.basename(__filename)}`);

console.log(`Process args: ${process.argv}`);
var NodeRSA = require('node-rsa');
var key = new NodeRSA({b: 512});

var publicKey = key.exportKey('public');
var privateKey = key.exportKey('private');

// console.log(publicKey);
// console.log(privateKey);

var plainText = "hello world";
var encrypted = key.encrypt(plainText, 'base64');
console.log(encrypted);

var decrypted = key.decrypt(encrypted, 'utf8');
console.log(decrypted);

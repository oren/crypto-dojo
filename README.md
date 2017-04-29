Notes from cryptography class at CoderDojo

https://github.com/strategicpause/coderdojo-crypto

**Public Key Encryption**
*  Encrypt with recipient's pubic key.
*  Decrypt with recipient's private key.
*  private key is used for two things: to decrypt and also to sign.

**What is a digital signature?**

A way to verify that the person who wrote the message is the one who wrote it.
It also let us know that the message was not modified. If it did the verification fails.


Encrypt a message, create signiture file, decrypt the message, and verify:

```
npm install
./encrypt.sh
```

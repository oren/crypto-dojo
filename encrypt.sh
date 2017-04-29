# 0. Bob and Alice generate RSA key pairs
# https://rietta.com/blog/2012/01/27/openssl-generating-rsa-key-from-command/

# 1. Bob encrypt message using Alice's public key
cat message.txt | openssl rsautl -encrypt -pubin -inkey alice_public.pem | base64 > tmp/message.encrypted

# 2. Bob create signature file for the message using his private key (hash the message and encrypt the hash with his private key)
openssl dgst -sha256 -sign bob_private.pem message.txt > tmp/message.txt.sig

# 3. Bob email alice both files: message.encrypted and message.txt.sig

# 4. Alice decrypt message from Bob using her private key
cat tmp/message.encrypted | base64 --decode | openssl rsautl -inkey alice_private.pem -decrypt > tmp/message.txt

# 5. Alice verify bob's message with Bob's public key
openssl dgst -sha256 -verify bob_public.pem -signature tmp/message.txt.sig tmp/message.txt

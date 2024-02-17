# See https://www.feistyduck.com/library/openssl-cookbook/online/openssl-command-line/key-generation.html
# No idea rsa .key files were actually the exponents and primes needed for key exchange!!

# 1. Generate key
# openssl genpkey -out fd.key -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -aes-128-cbc
# 2. Create Cert signing request
# openssl req -new -key fd.key -out
# 3. Sign it
# openssl x509 -req -days 365 -in fd.csr -signkey fd.key -out fd.crt




# OR create a self-signed cert starting with a key and fill in subject line 
# openssl req -new -x509 -days 365 -key fd.key -out fd.crt -subj /C=GB/L=London/O=Feisty Duck Ltd/CN=www.feistyduck.com"

# Ignore all above, that's for creating keys and certs, you can just connect with
openssl s_client -crlf -connect localhost:30001 -servername localhost

# and then send the password
jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt




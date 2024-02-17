# Find open ports
nmap -s -p31000-32000 localhost

# Check if any of services are ssl 
openssl s_client -connect localhost:31790
JQttfApK4SeyHwDlI9SXGR50qclOAil1

# We get RSA key so paste it into a new file in tmp 

# Paste it in a tmp file, change perms of key
chmod 600 fd.key

# Ssh
ssh -i fd.key bandit17@localhost -p 2220

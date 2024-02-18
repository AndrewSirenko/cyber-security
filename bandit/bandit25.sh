bandit25@bandit:~$ awk -F: -v user="bandit26" '$1 == user {print $NF}' /etc/passwd
/usr/bin/showtext
bandit25@bandit:~$ cat /usr/bin/showtext
#!/bin/sh

export TERM=linux

exec more ~/text.txt
exit 0

# Log in but make your terminal super small so it opens you in more. Hit v to enter vim
# from vim you can edit the password file of the level and change your shell

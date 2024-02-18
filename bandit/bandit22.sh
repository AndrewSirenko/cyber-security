cat cronjob_bandit23
cat /usr/bin/cronjob_bandit23.sh
myname=bandit23
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)
cat "/tmp/$mytarget"
QYw0Y2aiA672PsMmh9puTQuhoz8SyR2G
# ^^ is actually for bandit22



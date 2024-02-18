# Leviathan 1

Suspicious executable `check`, run it, looks for a password.

Try `strings check`, see a bunch of c commands like strcmp and setreuid. Notice `secrf` and `love`

Try `strace` to see what's happening. Nothing special. 

Try `ltrace` to check library calls. See a strcmp that reveals plaintext password... `sex`

Type in real password. Now I've escalated to leviathan2.

`cat /etc/leviathan_pass/leviathan2`: mEh5PNl10e

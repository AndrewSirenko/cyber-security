
leviathan3@gibson:~$ ltrace ./level3 kakaka
__libc_start_main(0x80492bf, 2, 0xffffd5b4, 0 <unfinished ...>
strcmp("h0no33", "kakaka")                                       = -1
printf("Enter the password> ")                                   = 20
fgets(Enter the password> h0no33
"h0no33\n", 256, 0xf7e2a620)                               = 0xffffd38c
strcmp("h0no33\n", "snlprintf\n")                                = -1
puts("bzzzzzzzzap. WRONG"bzzzzzzzzap. WRONG
)                                       = 19
+++ exited (status 0) +++
leviathan3@gibson:~$ ./level3
Enter the password> snlprintf
[You've got shell]!
$ whoami
leviathan4
$ cat /etc/leviathan_pass/leviathan4
AgvropI4OA

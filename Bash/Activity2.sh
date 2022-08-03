
7
    Using ONLY the awk command, write a BASH one-liner script that extracts ONLY the names of all the system and user accounts that are not UIDs 0-3.
    Only display those that use /bin/bash as their default shell.
    The input file is named $HOME/passwd and is located in the current directory.
    Output the results to a file called $HOME/SED/names.txt

awk -F: '($3 > 3) && ($7 == "/bin/bash") {print $1}' $HOME/passwd > $HOME/SED/names.txt

8
    Find all dmesg kernel messages that contain CPU or BIOS (uppercase) in the string, but not usable or reserved (case-insensitive)
    Print only the msg itself, omitting the bracketed numerical expressions ie: [1.132775]

dmesg | egrep -v -i 'usable|reserved' | egrep 'CPU|BIOS' | cut -d] -f2-


9 

    Write a Bash script using "Command Substitution" to replace all passwords, using openssl, from the file $HOME/PASS/shadow.txt with the MD5 encrypted password: Password1234, with salt: bad4u
    Output of this command should go to the screen/standard output.
    You are not limited to a particular command, however you must use openssl. Type man openssl passwd for more information.

a=$(openssl passwd -1 -salt bad4u Password1234)
awk -F: -v "awk_var=$a" 'BEGIN {OFS=":"} {$2=awk_var} {print}' $HOME/PASS/shadow.txt

10 

    Using ONLY sed, write all lines from $HOME/passwd into $HOME/PASS/passwd.txt that do not end with either /bin/sh or /bin/false.
    
    sed -e '/\/bin\/sh/d' -e '/\/bin\/false/d' $HOME/passwd > $HOME/PASS/passwd.txt

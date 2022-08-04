6
Write a basic bash script that greps ONLY the IP addresses in the text file provided (named StoryHiddenIPs in the current directory); 
sort them uniquely by number of times they appear.

It is not important to have a regular expression that only catches fully valid IP addresses. It is more important that you become 
familiar with creating and using regular expressions. Below, there are some useful websites that you can use to visually see what 
your regular expression pattern is matching on.

grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" StoryHiddenIPs | sort | uniq -c | sort -r

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
11

    Using find, find all files under the $HOME directory with a .bin extension ONLY.
    Once the file(s) and their path(s) have been found, remove the file name from the absolute path output.
    Ensure there is no trailing / at the end of the directory path when outputting to standard output.
    You may need to sort the output depending on the command(s) you use.

find $HOME -type f -name '*.bin*' | rev | cut -d/ -f2- | rev | sort -u

12
    
    Write a script which will copy the last entry/line in the passwd-like file specified by the $1 positional parameter
    Modify the copied line to change:
        User name to the value specified by $2 positional parameter
        Used id and group id to the value specified by $3 positional parameter
        Home directory to a directory matching the user name specified by $2 positional parameter under the /home directory
        The default shell to `/bin/bash'
    Append the modified line to the end of the file

#/bin/bash

tail -1 $1 |
awk -F: -v "name=$2" -v "id=$3" 'BEGIN {OFS=":"} {$1=name} {$3=id}{$4=id} {$6="/home/"name}{$7="/bin/bash"} {print}' >> $1

13


    Find all executable files under the following four directories:
        /bin
        /sbin
        /usr/bin
        /usr/sbin
    Sort the filenames with absolute path, and get the md5sum of the 10th file from the top of the list.

md5sum $(find /sbin /bin /usr/bin -type f -executable | sort -u | head -10 | tail -1) | cut -d/ -f1.

14

Using any BASH command complete the following:

    Sort the /etc/passwd file numerically by the GID field.
    For the 10th entry in the sorted passwd file, get an md5 hash of that entry’s home directory.
    Output ONLY the MD5 hash of the directory's name to standard output
    
cat /etc/passwd | cut -d: -f4,6 | sort -n | head -10 | tail -1 | cut -d: -f2 | md5sum | cut -d' ' -f1

15



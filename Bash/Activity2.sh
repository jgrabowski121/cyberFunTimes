

    Using ONLY the awk command, write a BASH one-liner script that extracts ONLY the names of all the system and user accounts that are not UIDs 0-3.
    Only display those that use /bin/bash as their default shell.
    The input file is named $HOME/passwd and is located in the current directory.
    Output the results to a file called $HOME/SED/names.txt

awk -F: '($3 > 3) && ($7 == "/bin/bash") {print $1}' $HOME/passwd > $HOME/SED/names.txt


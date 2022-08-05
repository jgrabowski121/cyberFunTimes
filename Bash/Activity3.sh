16
Design a script that detects the existence of directory: $HOME/.ssh

    Upon successful detection, copies any and all files from within the directory $HOME/.ssh to directory 
    $HOME/SSH and produce no output. You will need to create $HOME/SSH.
    Upon un-successful detection, displays the error message "Run ssh-keygen" to the user.

NOTE: If the $HOME/.ssh directory does not exist, one may run the ssh-keygen command. Accept all 
defaults for the purposes of this exercise. This is not necessary for passing the activity 
but can be used for testing on your local machine.


if [[ -e $HOME/.ssh ]]; then
    mkdir $HOME/SSH
    cp -r $HOME/.ssh/* $HOME/SSH
else
    echo Run ssh-keygen
fi

17

    Write a script that determines your default gateway ip address. Assign that address to a variable using command substitution.

    NOTE: Networking on the CTFd is limited for security reasons. ip route and route are emulated. Use either of those with no switches.

    Have your script determine the absolute path of the ping application. Assign the absolute path to a variable using command substitution.
    Have your script send six ping packets to your default gateway, utilizing the path discovered in the previous step, and assign the response to a variable using command substitution.
    Evaluate the response as being either successful or failure, and print an appropriate message to the screen.

default=$( ip route | grep default | awk '{print $3}' )
abs=$( which ping )
response=$($abs -c 6 $default)
a=$(echo $response | grep -o "6 received")


if [[ "$a" == "6 received" ]]; then
   echo "successful";
else
   echo "failure";
fi

18 

    Create the following files in a new directory you create $HOME/ZIP:
        file1 will contain the md5sum of the text 12345
        file2 will contain the md5sum of the text 6789
        file3 will contain the md5sum of the text abcdef
    Create a zip file containing the three files above, without being stored inside a directory in the zip file. Name the zip file $HOME/ZIP/file.zip
        HINT: "Junk" the paths
    Utilize tar on $HOME/ZIP/file.zip to archive it into a file called $HOME/ZIP/file.tar.gz which should not include directories. Use the gzip option in tar, DO NOT use a seperate gzip binary.
        HINT: You might need an option to change directories first.

mkdir $HOME/ZIP/ 
cd $HOME/ZIP
echo "12345" | md5sum | cut -d" " -f1 >  file1
echo "6789" | md5sum  | cut -d" " -f1  >   file2
echo "abcdef" | md5sum | cut -d" " -f1 > file3

zip file.zip file1 file2 file3

tar -czf file.tar.gz file.zip

19
    Design a basic FOR Loop that iteratively alters the file system and user entries in a passwd-like file for new users: LARRY, CURLY, and MOE.
    Each user should have an entry in the $HOME/passwd file
    The userid and groupid will be the same and can be found as the sole contents of a file with the user's name in the $HOME directory (i.e. $HOME/LARRY.txt might contain 123)
    The home directory will be a directory with the user's name located under the $HOME directory (i.e. $HOME/LARRY)
        NOTE: Do NOT use shell expansion when specifying this in the $HOME/passwd file.
    The default shell will be /bin/bash
    The other fields in the new entries should match root's entry
    Users should be created in the order specified
    
    for value in 'LARRY' 'CURLY' 'MOE'
do  
    mkdir "$HOME/$value"  
    echo $value:x:$(cat $HOME/$value.txt):$(cat $HOME/$value.txt):root:'$HOME'/$value:/bin/bash   >> $HOME/passwd
done

20


    Write a bash script that will find all the files in the /etc directory, and obtains the octal permission 
    of those files. The stat command will be useful for this task.
    Depending how you go about your script, you may find writing to the local directory useful. What you must 
    sperate out from the initial results are the octal permissions of 0-640 and those equal to and greater 
    than 642, ie 0-640 goes to low.txt, while 642 is sent to high.txt.
    Have your script uniquely sort the contents of the two files by count, numerically-reversed, and output the 
    results, with applicable titles, to the screen. An example of the desired output is shown below.
        NOTE: There is a blank line being printed between the two sections of the output below.


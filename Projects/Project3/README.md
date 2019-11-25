Project 3
=========

The goal of this project is to rotate all the logs found in a specified directory so that you have one weeks’ worth of data. After day 2 the logs will be zipped and after day 7, they will be deleted. All of the actions taken by the script will be outputted into a log found in the home directory of the user that runs the script. 

This script can be run as a cronjob or with its new modifications can be run manually from the commandline. It can rotate as many directories as you like as long as you pass them as parameters. You can now specify a Blacklist of files that it will ignore and specify the ammount of times you would like to rotate the logs. Usage Example: ./Project3.sh -p "~/Testing_Project3/test1 ~/Testing_Project3/test2" -d "~/Testing_Project3/test1/cat ~/Testing_Project3/test2/mouse" -r 2 

# Prerequisites for running the script:

	1) Create a directory called “Testing_Project3” in your user folder.

		Command:		mkdir ~/Testing_Project3

	2) Create two directories in "Testing_Project3" called "test1" and "test2"

		Command: 		mkdir ~/Testing_Project3/test1
		Command:		mkdir ~/Testing_Project3/test2
	
	3) Create multiple files in each directory that can be rotated. (these files should not contain numbers)

		Command:        touch ~/Testing_Project3/test1/cat
		Command:        touch ~/Testing_Project3/test1/dog
		Command:        touch ~/Testing_Project3/test1/pig

		Command:        touch ~/Testing_Project3/test2/mouse
		Command:        touch ~/Testing_Project3/test2/house
		Command:        touch ~/Testing_Project3/test2/bat

# Example Output:

    Before script ran: ll ~/Testing_Project3/test1/ ~/Testing_Project3/test2/
        /home/neiheivj/Testing_Project3/test1/:
        total 0
        -rw-rw-r--. 1 neiheivj neiheivj 0 Nov 25 15:33 cat
        -rw-rw-r--. 1 neiheivj neiheivj 0 Nov 25 15:33 dog
        -rw-rw-r--. 1 neiheivj neiheivj 0 Nov 25 15:33 pig

        /home/neiheivj/Testing_Project3/test2/:
        total 0
        -rw-rw-r--. 1 neiheivj neiheivj 0 Nov 25 15:34 bat
        -rw-rw-r--. 1 neiheivj neiheivj 0 Nov 25 15:34 house
        -rw-rw-r--. 1 neiheivj neiheivj 0 Nov 25 15:34 mouse

    Script 1: ./Project3.sh -p "/home/neiheivj/Testing_Project3/test1 /home/neiheivj/Testing_Project3/test2" -b "/home/neiheivj/Testing_Project3/test1/cat /home/neiheivj/Testing_Project3/test2/house" -r 3
        [neiheivj@neiheivj-centos Project3]$ ll ~/Testing_Project3/test1/ ~/Testing_Project3/test2/
        /home/neiheivj/Testing_Project3/test1/:
        total 16
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 15:33 cat
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 dog
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 dog.1
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 dog.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 15:33 dog.3.gz
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 pig
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 pig.1
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 pig.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 15:33 pig.3.gz

        /home/neiheivj/Testing_Project3/test2/:
        total 16
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 bat
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 bat.1
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 bat.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 15:34 bat.3.gz
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 15:34 house
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 mouse
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 mouse.1
        -rw-rw-r--. 1 neiheivj neiheivj 28 Nov 25 16:00 mouse.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 28 Nov 25 15:34 mouse.3.gz

    Script 2: ./Project3.sh -p "/home/neiheivj/Testing_Project3/test1 /home/neiheivj/Testing_Project3/test2" -b "/home/neiheivj/Testing_Project3/test2/mouse" -r 5
        [neiheivj@neiheivj-centos Project3]$ ll ~/Testing_Project3/test1/ ~/Testing_Project3/test2/                                                       
        /home/neiheivj/Testing_Project3/test1/:
        total 64
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 cat
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 cat.1
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 cat.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 cat.3.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 cat.4.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 15:33 cat.5.gz
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 dog
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 dog.1
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 dog.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 dog.3.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 dog.4.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 dog.5.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 dog.6.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 dog.7.gz
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 pig
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 pig.1
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 pig.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 pig.3.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 pig.4.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 pig.5.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 pig.6.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 pig.7.gz

        /home/neiheivj/Testing_Project3/test2/:
        total 48
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 bat
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 bat.1
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 bat.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 bat.3.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:03 bat.4.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 bat.5.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 bat.6.gz
        -rw-rw-r--. 1 neiheivj neiheivj 26 Nov 25 16:00 bat.7.gz
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 house
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:03 house.1
        -rw-rw-r--. 1 neiheivj neiheivj 28 Nov 25 16:03 house.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 28 Nov 25 16:03 house.3.gz
        -rw-rw-r--. 1 neiheivj neiheivj 28 Nov 25 16:03 house.4.gz
        -rw-rw-r--. 1 neiheivj neiheivj 28 Nov 25 15:34 house.5.gz
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 mouse
        -rw-rw-r--. 1 neiheivj neiheivj  0 Nov 25 16:00 mouse.1
        -rw-rw-r--. 1 neiheivj neiheivj 28 Nov 25 16:00 mouse.2.gz
        -rw-rw-r--. 1 neiheivj neiheivj 28 Nov 25 15:34 mouse.3.gz
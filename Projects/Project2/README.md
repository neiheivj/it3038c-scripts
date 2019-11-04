Project 2
=========

The goal of this project is to rotate all the logs found in a specified directory so that you have one weeks’ worth of data. After day 2 the logs will be zipped and after day 7, they will be deleted. All of the actions taken by the script will be outputted into a log found in the home directory of the user that runs the script. This script is meant to be ran once a day using a cronjob. This script can rotate as many directories as you like as long as you pass them as parameters. To specify what directories you would like to be rotated add them as parameters when running the script. Usage Example: ./Project2.sh ~/Testing_Project2/test1 ~/TestingProject2/test2

# Prerequisites for running the script:

	1) Create a directory called “Testing_Project2” in your user folder.

		Command:		mkdir ~/Testing_Project2

	2) Create two directories in "Testing_Project2" called "test1" and "test2"

		Command: 		mkdir ~/Testing_Project2/test1
		Command:		mkdir ~/Testing_Project2/test2
	
	3) Create multiple files in each directory that can be rotated. (these files should not contain numbers)

		Command:        touch ~/Testing_Project2/test1/cat
		Command:        touch ~/Testing_Project2/test1/dog
		Command:        touch ~/Testing_Project2/test1/pig

		Command:        touch ~/Testing_Project2/test2/mouse
		Command:        touch ~/Testing_Project2/test2/house
		Command:        touch ~/Testing_Project2/test2/bat

# Example Output:

	Before running the script: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 0
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 cat
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 dog
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 pig

		/home/neiheivj/Testing_Project2/test2:
		total 0
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 bat
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 house
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 mouse
	
	First time the script ran: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 0
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:49 cat
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:49 dog
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:49 pig
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 pig.1

		/home/neiheivj/Testing_Project2/test2:
		total 0
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:49 bat
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 bat.1
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:49 house
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 house.1
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:49 mouse
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 mouse.1

	Second time the script ran: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 12
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:49 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:49 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 pig
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:49 pig.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 pig.2.gz

		/home/neiheivj/Testing_Project2/test2:
		total 12
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 bat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:49 bat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 bat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 house
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:49 house.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 house.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 mouse
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:49 mouse.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 mouse.2.gz

	Third time the script ran: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 24
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 pig
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 pig.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 pig.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 pig.3.gz

		/home/neiheivj/Testing_Project2/test2:
		total 24
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 bat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 bat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 bat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 bat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 house
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 house.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 house.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 house.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 mouse
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:52 mouse.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 mouse.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 mouse.3.gz

	Fourth time the script ran: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 36
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 pig
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 pig.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 pig.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 pig.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 pig.4.gz

		/home/neiheivj/Testing_Project2/test2:
		total 36
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 bat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 bat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 bat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 bat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 bat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 house
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 house.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 house.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 house.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 house.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 mouse
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:53 mouse.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 mouse.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 mouse.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 mouse.4.gz

	Fifth time the script ran: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 48
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 cat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 dog.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 pig
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 pig.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 pig.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 pig.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 pig.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 pig.5.gz

		/home/neiheivj/Testing_Project2/test2:
		total 48
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 bat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 bat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 bat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 bat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 bat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 bat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 house
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 house.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:53 house.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 house.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 house.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 house.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 mouse
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:54 mouse.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:53 mouse.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 mouse.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 mouse.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 mouse.5.gz

	Sixth time the script ran: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 60
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 cat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 cat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 dog.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 dog.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 pig
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 pig.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 pig.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 pig.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 pig.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 pig.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 pig.6.gz

		/home/neiheivj/Testing_Project2/test2:
		total 60
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 bat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 bat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 bat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 bat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 bat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 bat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 bat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 house
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 house.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:54 house.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:53 house.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 house.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 house.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 house.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 mouse
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 mouse.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:54 mouse.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:53 mouse.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 mouse.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 mouse.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 mouse.6.gz

	Seventh time the script ran: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 72
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 cat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 cat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 cat.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 dog.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 dog.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 dog.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 pig
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 pig.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 pig.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 pig.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 pig.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 pig.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 pig.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 pig.7.gz

		/home/neiheivj/Testing_Project2/test2:
		total 72
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 bat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 bat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 bat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 bat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 bat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 bat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 bat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:03 bat.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 house
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 house.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:55 house.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:54 house.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:53 house.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 house.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 house.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 house.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 mouse
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:55 mouse.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:55 mouse.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:54 mouse.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:53 mouse.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 mouse.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 mouse.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:03 mouse.7.gz

	Eigth time the script was ran: ll ~/Testing_Project2/test1 ~/Testing_Project2/test2
		/home/neiheivj/Testing_Project2/test1:
		total 72
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:57 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 cat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 cat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 cat.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:57 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 dog.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 dog.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 dog.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:57 pig
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 pig.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 pig.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 pig.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 pig.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 pig.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 pig.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 pig.7.gz

		/home/neiheivj/Testing_Project2/test2:
		total 72
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:57 bat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 bat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 bat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:55 bat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:54 bat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:53 bat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:52 bat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Oct 28 12:49 bat.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:57 house
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 house.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:55 house.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:55 house.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:54 house.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:53 house.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 house.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 house.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:57 mouse
		-rw-rw-r--. 1 neiheivj neiheivj  0 Oct 28 12:56 mouse.1
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:55 mouse.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:55 mouse.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:54 mouse.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:53 mouse.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:52 mouse.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 28 Oct 28 12:49 mouse.7.gz
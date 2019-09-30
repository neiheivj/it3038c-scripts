Project 1
=========

The goal of this project is to rotate all the logs found in a specified directory so that you have one weeks’ worth of data. After day 2 the logs will be zipped and after day 7, they will be deleted. All of the actions taken by the script will be outputted into a log found in the home directory of the user that runs the script. This script is meant to be ran once a day using a cronjob. The directory that the script checks to rotate and where the output log goes can be modified by changing one variable each.

# Prerequisites for running the script:

	1) Create a directory called “Testing_Project1” in your user folder.

	Command:          mkdir ~/Testing_Project1

	2) Create multiple files that can be rotated. (these files should not contain numbers)

	Command:          touch ~/Testing_Project1/test
	Command:          touch ~/Testing_Project1/dog
	Command:          touch ~/Testing_Project1/cat

# Example Output:

	Before script is ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:52 cat
		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:52 dog
		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:52 test

	First time the script was ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:52 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:52 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:55 test
		-rw-rw-r--. 1 neiheivj neiheivj 0 Sep 28 13:52 test.1
	
	Second time the script was ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test.1
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:52 test.2.gz

	Third time the script was ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test.1
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:52 test.3.gz

	Fourth time the script was ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test.1
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:52 test.4.gz

	Fifth time the script was ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 cat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 dog.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test.1
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:52 test.5.gz

	Sixth time the script was ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 cat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 dog.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test.1
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:52 test.6.gz
	
	Seventh time the script was ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 cat.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:52 dog.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test.1
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:52 test.7.gz

	Eighth time the script was ran: “ll ~/Testing_Project1”

		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 cat.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 cat.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 dog.1
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 26 Sep 28 13:55 dog.7.gz
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test
		-rw-rw-r--. 1 neiheivj neiheivj  0 Sep 28 13:55 test.1
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.2.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.3.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.4.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.5.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.6.gz
		-rw-rw-r--. 1 neiheivj neiheivj 27 Sep 28 13:55 test.7.gz

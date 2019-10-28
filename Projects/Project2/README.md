Project 2
=========

The goal of this project is to rotate all the logs found in a specified directory so that you have one weeks’ worth of data. After day 2 the logs will be zipped and after day 7, they will be deleted. All of the actions taken by the script will be outputted into a log found in the home directory of the user that runs the script. This script is meant to be ran once a day using a cronjob. The directory that the script checks to rotate and where the output log goes can be modified by changing one variable each.

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
		test1:
		total 0
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 cat
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 dog
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 pig

		test2:
		total 0
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 bat
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 house
		-rw-rw-r--. 1 neiheivj neiheivj 0 Oct 28 12:03 mouse
	

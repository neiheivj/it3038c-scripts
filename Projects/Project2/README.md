Project 2
=========

The goal of this project is to rotate all the logs found in a specified directory so that you have one weeks’ worth of data. After day 2 the logs will be zipped and after day 7, they will be deleted. All of the actions taken by the script will be outputted into a log found in the home directory of the user that runs the script. This script is meant to be ran once a day using a cronjob. The directory that the script checks to rotate and where the output log goes can be modified by changing one variable each.

# Prerequisites for running the script:

	1) Create a directory called “Testing_Project2” in your user folder.

	Command:          mkdir ~/Testing_Project2

	2) Create multiple files that can be rotated. (these files should not contain numbers)

	Command:          touch ~/Testing_Project2/test
	Command:          touch ~/Testing_Project2/dog
	Command:          touch ~/Testing_Project2/cat

# Example Output:
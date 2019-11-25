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


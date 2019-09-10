#!/bin/bash
#This script will email us our user, IP, hostname and today's date. 
emailaddress=neiheivj@mail.uc.edu
today=$(date +"%d-%m-%Y %H:%M:%S")
ip=$(ip a | grep 'dynamic ens192' | awk '{print $2}')
content="Date: \t $today \nServer Name: \t $HOSTNAME \nMy IP Address: \t $ip \nUser: \t $USER \nMy Bash Version: \t $BASH_VERSION \n"
mailx -s "IT3038C Linux IP" $emailaddress <<< "$(echo -e $content)"

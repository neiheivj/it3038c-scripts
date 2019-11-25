#!/bin/bash
#Written by Vincent Neiheisel
#Edited 11/25/2019
#Rotate logs. Renames every day, zips them after day 2, deletes after day 7. EX. syslog, syslog.1, syslog.2.gz, syslog.3.gz ... syslog.7.gz

# Output_Log_Location is the file path of where the output log of what happened will go
Output_Log_Location="$HOME/rotate_logs.log"

# Paths are the file paths to the locations where the logs we want to rotate are. These are passed through as a parameter when the script is called. usage: ./Project3 -p "/home/neiheivj/Project3 /home/neiheivj/Project4"
Paths=

# BlackLists is the list of directories or files that will be ignored by this script if they are within the Paths
BlackList=

# Rotate is the number of times this script will rotate the logs. It is set to 1 by defualt.
Rotate="1"

# This will check the flags declared when the script is ran and will override the defualt calues if the flag appears.
while getopts "p:b:r:o:" opt; do
  case $opt in
    p) Paths=$OPTARG                 ;;
    b) BlackList=$OPTARG             ;;
    r) Rotate=$OPTARG                ;;
    o) Output_Log_Location=$OPTARG   ;;
    *) echo 'Error: Invalid argument.'
       exit 1
  esac
done

# Checks each individual Path in Paths.
for Path in $Paths
do
        # Verifies that Path has a value and if it is valid. If it isn't it will produce an error and will terminate the script.
        if [ "${Path}" = "" ]
        then
                echo "Error: Path is null."
                exit
        elif ! [ -d "${Path}" ]
        then
                echo "Error: Path does not exist."
                exit
        fi
done

# Verifies that Rotate is an integer. If it isn't it will produce an error and will terminate the script.
if ! [[ "$Rotate" =~ ^[0-9]+$ ]]
then
        echo "Error: Rotate is not an integer."
        exit
fi

# Checks each BlackList Item in BlackList
for BlackListItem in $BlackList
do
        # Verifies that if there is a BlackList item that it is a valid path. If it isn't it will produce an error and will terminate the script.
        if ! [ "${BlackListItem}" = "" ]
        then
                if ! [ -f "${BlackListItem}" ]
                then
                        echo "Error: BlackList item does not exist."
                        exit
                fi
        fi
done

# This will start the rotate process for each path
for Path in $Paths
do
        # This will specify the number of times the logs will be rotated
        for ((i=0;i<$Rotate;i++))
        do

                # Input_Logs is an array of only files that have not been rotated yet in the file path location of $Path
                Input_Logs=$(ls -p ${Path} | grep -v / | grep -vE "[0-9]")

                # For each $Log in $Input_Logs it will check if the next days iteration exists, and if it does then it will rotate them
                for Log in ${Input_Logs[@]}
                do

                        # This will check if the Log is in the BlackList
                        if ! [[ "$BlackList" == *"${Path}/${Log}"* ]]
                        then

                                # This checks if there is a *.7.gz log in existance and if it exists it will delete it and outputs that in that in $Output_Log_Location
                                if [ -f "${Path}/${Log}.7.gz" ]
                                then
                                        rm "${Path}/${Log}.7.gz"
                                        echo "$(date): ${Path}/${Log}.7.gz was removed" >> $Output_Log_Location
                                fi

                                # This checks if there is a *.6.gz file in existance and if it exists it will rename it *.7.gz and outputs that in that in $Output_Log_Location
                                if [ -f "${Path}/${Log}.6.gz" ]
                                then
                                        mv "${Path}/${Log}.6.gz" "${Path}/${Log}.7.gz"
                                        echo "$(date): ${Path}/${Log}.6.gz was renamed ${Path}/${Log}.7.gz" >> $Output_Log_Location
                                fi

                                # This checks if there is a *.5.gz file in existance and if it exists it will rename it *.6.gz and outputs that in that in $Output_Log_Location
                                if [ -f "${Path}/${Log}.5.gz" ]
                                then
                                        mv "${Path}/${Log}.5.gz" "${Path}/${Log}.6.gz"
                                        echo "$(date): ${Path}/${Log}.5.gz was renamed ${Path}/${Log}.6.gz" >> $Output_Log_Location
                                fi

                                # This checks if there is a *.4.gz file in existance and if it exists it will rename it *.5.gz and outputs that in that in $Output_Log_Location
                                if [ -f "${Path}/${Log}.4.gz" ]
                                then
                                        mv "${Path}/${Log}.4.gz" "${Path}/${Log}.5.gz"
                                        echo "$(date): ${Path}/${Log}.4.gz was renamed ${Path}/${Log}.5.gz" >> $Output_Log_Location
                                fi

                                # This checks if there is a *.3.gz file in existance and if it exists it will rename it *.4.gz and outputs that in that in $Output_Log_Location
                                if [ -f "${Path}/${Log}.3.gz" ]
                                then
                                        mv "${Path}/${Log}.3.gz" "${Path}/${Log}.4.gz"
                                        echo "$(date): ${Path}/${Log}.3.gz was renamed ${Path}/${Log}.4.gz" >> $Output_Log_Location
                                fi

                                # This checks if there is a *.2.gz file in existance and if it exists it will rename it *.3.gz and outputs that in that in $Output_Log_Location
                                if [ -f "${Path}/${Log}.2.gz" ]
                                then
                                        mv "${Path}/${Log}.2.gz" "${Path}/${Log}.3.gz"
                                        echo "$(date): ${Path}/${Log}.2.gz was renamed ${Path}/${Log}.3.gz" >> $Output_Log_Location
                                fi

                                # This checks if there is a *.1 file in existance and if it exists it will zip it and then rename it *.2.gz and outputs that in that in $Output_Log_Location
                                if [ -f "${Path}/${Log}.1" ]
                                then
                                        gzip "${Path}/${Log}.1"
                                        echo "$(date): ${Path}/${Log}.1 was zipped" >> $Output_Log_Location
                                        mv "${Path}/${Log}.1.gz" "${Path}/${Log}.2.gz"
                                        echo "$(date): ${Path}/${Log}.1.gz was renamed ${Path}/${Log}.2.gz" >> $Output_Log_Location
                                fi

                                # This renames the base log to *.1 and outputs that in that in $Output_Log_Location
                                mv "${Path}/${Log}" "${Path}/${Log}.1"
                                echo "$(date): ${Path}/${Log} was renamed ${Path}/${Log}.1" >> $Output_Log_Location

                                # This creates a new base log and outputs that in that in $Output_Log_Location
                                touch "${Path}/${Log}"
                                echo "$(date): A new ${Path}/${Log} was created" >> $Output_Log_Location
                        fi
                done
        done
done
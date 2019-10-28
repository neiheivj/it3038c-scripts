#!/bin/bash
#Written by Vincent Neiheisel
#Edited 9/20/2019
#Rotate logs. Renames every day, zips them after day 2, deletes after day 7. EX. syslog, syslog.1, syslog.2.gz, syslog.3.gz ... syslog.7.gz

# Output_Log_Location is the file path of where the output log of what happened will go
Output_Log_Location="$HOME/rotate_logs.log" 

# Path is the file path to the location where the logs we want to rotate are. These are passed through as a parameter when the script is called. usage: ./Project2 /home/neiheivj/Project2/
For Path in "$@"
do 

    # Input_Logs is an array of only files that have not been rotated yet in the file path location of $Path
    Input_Logs=$(ls -p ${Path} | grep -v / | grep -vE "[0-9]")

    # For each $Log in $Input_Logs it will check if the next days iteration exists, and if it does then it will rotate them
    for Log in ${Input_Logs[@]}; do

        # This checks if there is a *.7.gz log in existance and if it exists it will delete it and outputs that in that in $Output_Log_Location
            if [ -f "${Path}${Log}.7.gz" ]
            then
                    rm "${Path}${Log}.7.gz"
                    echo "$(date): ${Path}${Log}.7.gz was removed" >> $Output_Log_Location
            fi
        
        # This checks if there is a *.6.gz file in existance and if it exists it will rename it *.7.gz and outputs that in that in $Output_Log_Location
            if [ -f "${Path}${Log}.6.gz" ]
            then
                    mv "${Path}${Log}.6.gz" "${Path}${Log}.7.gz"
                    echo "$(date): ${Path}${Log}.6.gz was renamed ${Path}${Log}.7.gz" >> $Output_Log_Location
            fi

        # This checks if there is a *.5.gz file in existance and if it exists it will rename it *.6.gz and outputs that in that in $Output_Log_Location
            if [ -f "${Path}${Log}.5.gz" ]
            then
                    mv "${Path}${Log}.5.gz" "${Path}${Log}.6.gz"
                    echo "$(date): ${Path}${Log}.5.gz was renamed ${Path}${Log}.6.gz" >> $Output_Log_Location
            fi

        # This checks if there is a *.4.gz file in existance and if it exists it will rename it *.5.gz and outputs that in that in $Output_Log_Location
            if [ -f "${Path}${Log}.4.gz" ]
            then
                    mv "${Path}${Log}.4.gz" "${Path}${Log}.5.gz"
                    echo "$(date): ${Path}${Log}.4.gz was renamed ${Path}${Log}.5.gz" >> $Output_Log_Location
            fi

        # This checks if there is a *.3.gz file in existance and if it exists it will rename it *.4.gz and outputs that in that in $Output_Log_Location
            if [ -f "${Path}${Log}.3.gz" ]
            then
                    mv "${Path}${Log}.3.gz" "${Path}${Log}.4.gz"
                    echo "$(date): ${Path}${Log}.3.gz was renamed ${Path}${Log}.4.gz" >> $Output_Log_Location
            fi

        # This checks if there is a *.2.gz file in existance and if it exists it will rename it *.3.gz and outputs that in that in $Output_Log_Location
            if [ -f "${Path}${Log}.2.gz" ]
            then
                    mv "${Path}${Log}.2.gz" "${Path}${Log}.3.gz"
                    echo "$(date): ${Path}${Log}.2.gz was renamed ${Path}${Log}.3.gz" >> $Output_Log_Location
            fi

        # This checks if there is a *.1 file in existance and if it exists it will zip it and then rename it *.2.gz and outputs that in that in $Output_Log_Location
            if [ -f "${Path}${Log}.1" ]
            then
                    gzip "${Path}${Log}.1"
                    echo "$(date): ${Path}${Log}.1 was zipped" >> $Output_Log_Location
                    mv "${Path}${Log}.1.gz" "${Path}${Log}.2.gz"
                    echo "$(date): ${Path}${Log}.1.gz was renamed ${Path}${Log}.2.gz" >> $Output_Log_Location
            fi

        # This renames the base log to *.1 and outputs that in that in $Output_Log_Location
            mv "${Path}${Log}" "${Path}${Log}.1"
            echo "$(date): ${Path}${Log} was renamed ${Path}${Log}.1" >> $Output_Log_Location

        # This creates a new base log and outputs that in that in $Output_Log_Location
            touch "${Path}${Log}"
        echo "$(date): A new ${Path}${Log} was created" >> $Output_Log_Location

    done
done
#!/bin/bash

# Write a shell script to check to see if the "file_path" exists 
# - if it does then display "file_path passwords are enabled"
# - Check for write permissions - if yes then display you have permission to edit the file
# - if not then display you do not have permissions

#Method 1-
if [[ -z $1 ]]
then
    echo "File name missing; Add it as a Command Line argument"
else
    FILE="/home/ubu/Summer-of-Bash/$1"

    if [[ -e $FILE ]]
    then
        echo "$FILE exists"
        if [[ -w $FILE ]]
        then
            echo "$FILE is writable by you."
        else
            echo "$FILE is not writable by you."
        fi
        if [[ -x $FILE ]]
        then
            echo "$FILE is executable"
        else
            echo "$FILE is not an executable"
        fi
    else
        echo "$FILE does not exist"
    fi 
fi
#! /bin/bash

# Filter an array with pattern such that only word without 'a' and 'A' are displayed
arr=($(cat $1)) #$() runs the command in a subshell and () also spawns a subshell and is used for array assignment 
echo "Array is: ${arr[@]/*[Aa]*/}"


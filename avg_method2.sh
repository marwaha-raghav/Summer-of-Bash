#!/bin/bash

# Method 2 average with exit codes
SUM=0
read -p "Enter the size of the array : " N
for (( i=0; i<$N; i++ ))
do
    read -p "Enter your numbers in the array: " entries
    arr[$i]=$entries
    printf "Entry added... \n"
    SUM=$(($SUM+ ${arr[$i]}))
    
done
echo "Sum is : $SUM"
echo $(( 1+1 ))| bc -l > /dev/null 2>&1
STATUS=$?
if [[ $STATUS -eq 0 ]]
then
    echo "Success: Command found"
    echo $SUM/$N | bc -l | xargs printf "Average is : %.3f \n" 
    echo "Exit status is: $?"
else
    echo "Failure: Install bc: Command not found"
    echo "Exit Status is: $STATUS"
    read -p "Would you like to install bc?: Enter \"Y\" or \"y\" to install : " choice
    if [[ $choice == 'Y' || $choice == 'y' ]]
    then
        sudo apt install bc
        echo "installed bc"
        echo $SUM/$N | bc -l | xargs printf "Average is : %.3f \n"
    else
        echo "Exit with code : $?"
        exit 1
    fi    
     
fi
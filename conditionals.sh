#!/bin/bash

#Easy: Read one character from STDIN if char is Y display YES if char is N display NO
#NO other character valid for input
echo "Enter the character"
read char
if [[ $char == "Y" || $char == "y" ]]
then
    echo "YES"
elif [[ $char == "N" || $char == "n" ]]
then
    echo "NO"
else
    echo "Enter valid input"
fi
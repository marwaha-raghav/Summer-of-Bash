#! /bin/bash

# Given a list of words on na new line read each line into an array and slice it to display elements between 3 and 7
i=0
if [[ -z $1 ]]
then
    echo "Enter file as command line agrument"
    exit 1
else
    if [[ -e $1 ]]
    then
        echo "Found the file"
        echo "creating array"
        while read line
        do
            arr[$i]=$line
            #echo "a{$i} is: ${arr[$i]}"
            i=$(($i+1))       
        done < $1
        echo "array is : ${arr[*]} " 
        echo "Sliced Array is: ${arr[*]:3:5}"
         
    else
        echo "File does not exist"
        exit 1
    fi
fi
 
            
    
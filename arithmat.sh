#!/bin/bash

#Medium: Arithmatic expresions: evaluate it.
#Constraints:all values <=999
#Sample input: 5+5-*3/20 +(19*2)/7

#read input
#while true
#do
#expr $input
#read input
#done

#Method 2 for evaluation of aithmatic expression
while true
do
    read equation
    if ! type bc > /dev/null 2>&1
    then
        sudo apt install bc
        echo $equation | bc -l | xargs printf "Solution is: %.3f \n"

    else
        echo $equation | bc -l | xargs printf "Solution is : %.3f \n"
    fi
    echo "Press [Ctrl^C] to exit or enter another expression"
done
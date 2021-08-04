#!/bin/bash

#EASY: Use Loop to print odd numbers from 1 to 99
#Method 1:
n=1
while [[ $n -lt 100 ]]
do
    if (( $n%2 != 0 ))
    then
    echo "$n"
    fi
    n=$(($n+1))
done 

#Method 2:
for number in {1..99..2}
do
    echo $number
done

#Method 3 Using external command seq
# seq {start} {step-size} {end}
seq 1 2 99

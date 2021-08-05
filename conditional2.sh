#!/bin/bash

#EASY: Find the type of triangle by comparing its sides.
#Input: three sides of a triangle X,Y,Z
#Constraits: 1<=X,Y,Z<=1000

echo "Enter side 1"
read side1
echo "enter side 2"
read side2
echo "enter side 3"
read side3
if [[ $side1 -gt 1000 || $side2 -gt 1000 || $side3 -gt 1000 ]]
then
    echo "sides too long"
    exit 0
elif [[ $side1 -eq $side3 && $side1 -eq $side2 && $side2 -eq $side3 ]]
then
    echo "EQUILATERAL"
elif [[ $side1 -ne $side3 && $side1 -ne $side2 && $side2 -ne $side3 ]]
then
    echo "SCALENE"
else
    echo "ISOSCELES"
fi
#!/bin/bash

#Given two integers X AND Y, Find their sum, difference, product and quotient
#Constraints -100 <= X,Y <= 100 & Y!=0
#OUTPUT Print results respectively and in quotient print only integer part

#Method 1 Using command line args

if [[ -z $1 || -z $2 ]]
then
    echo "pls enter arg1 and arg2 for method 1"
else
SUM=$(($1+$2))
echo "Sum is: $SUM"
DIFF=$(($1-$2))
echo "Difference is: $DIFF"
PROD=$(($1*$2))
echo "Product is: $PROD"
QUO=$(($1/$2))
echo "Quotient is: $QUO"
fi

#Method 2 using read 
echo "enter num1"
read num1
echo "enter num2"
read num2
if [[ -z $num1 || -z $num2 ]]
then
    echo "pls enter num1 and num2"
else
SUM=$(($num1+$num2))
echo "Sum is: $SUM"
DIFF=$(($num1-$num2))
echo "Difference is: $DIFF"
PROD=$(($num1*$num2))
echo "Product is: $PROD"
QUO=$(($num1%$num2))
echo "Quotient is: $QUO"
fi
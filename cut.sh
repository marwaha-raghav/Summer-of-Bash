#!/bin/bash

# Easy: Cut 1: Given N lines of input, print 3rd char from each line as new line of output
# guranteed eahc input will have 3rd character
# contraints : 1<=N<=100
# input is text file containingN lines of ASCII characters

# Easy : Cut 2 : display 2nd and 7nd character.
# Easy : Cut 3 : display 2nd to 7th char
# Easy : Cut 4 : display the first four characters from each line
# Easy : Cut 5 : given tab delimited file with several columns (tsv format) print first three fields.
# Easy : Cut 6 : print chars from 13th position to the end.
# Easy : Cut 7 : print fourth word in every sentence : assume space in only delimiter b/w words.
# Easy : Cut 8 : print 2 -7 field with delimiter as space
# Easy : Cut 9 : print 4 to last field in a tsv file.
cut1 () {
    cut -c3 $1
}

cut2 (){
    cut -c2,7 $1
}

cut3 (){
    cut -c2-7 $1
}

cut4 (){
    cut -c1-4 $1
}

cut5 (){
    cut -f1-3 $1

}

cut6 (){
    cut -c13- $1
}

cut7 () {
    cut -f4 -d " " $1
}

cut8 () {
    cut -f2-7 -d " " $1
}

cut9 () {
    cut -f4- $1
}
main () {
if [[ ! -z $1 ]]
then
    if [[ -e $1 ]]
    then
        echo "File exists"
        echo "cut1 output : $(cut1 $1)"
        echo "cut2 output : $(cut2 $1)"
        echo "cut3 output : $(cut3 $1)"
        echo "cut4 output : $(cut4 $1)"
        echo "cut5 output : $(cut5 $1)"
        echo "cut6 output : $(cut6 $1)"
        echo "cut7 output : $(cut7 $1)"
        echo "cut8 output : $(cut8 $1)"
        echo "cut9 output : $(cut9 $1)"
    else
        echo "File does not exist"
    fi
else
    echo "Please Enter filname as an argument"
fi
}
main $@
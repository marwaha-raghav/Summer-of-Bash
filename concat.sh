#! /bin/bash

#Method 1 (doesn't seem to work on hackerank for some reason) (but works correctly on shell)
echo "------------------- This is method 1 ---------------------------------------------------------- "
i=0
while read line
do
    arr[$i]=$line
    ((++i))
done < $1
echo "Original Array is : ${arr[*]}"

j=0
len=${#arr[*]}
for (( i=$len; i<$(($len*3)); i++ ))
do
  
        arr[$i]=${arr[j]}
        ((++j))
        #echo "works"

done
echo "concat array is: ${arr[*]}"

#Method 2 (Works on Hacker rank)
echo "------------------------ This is method 2 -------------------------------------------------------- "
a=($(cat $1))
echo "Original Array : ${a[@]}"
conc=("${a[@]}" "${a[@]}" "${a[@]}")
echo "Concat Array is : ${conc[@]}"
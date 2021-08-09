#/bin/bash

#Medium: Given N integers compute average, rounded to 3 decimal places
#INput: First input contains N and rest n1.....nN

#Method 1 

read -p "Enter the total size of array :" N
SUM=0
for (( i=0; i<$N; i++ ))
do
    read -p "Enter number in array position "[${i}]" :" number
    sample[$i]=${number}
    echo "${number} added to array at "[${i}]""
    SUM=$(($SUM+${sample[$i]}))
    #var=$((1+$i))
    #echo ${var}
done
 echo "numbers stored in the array : ${sample[*]}"
 echo "Sum of elements in the array is : ${SUM}"
 #echo "Average of the elements is ${SUM}/${N}: " $AVG
 if ! type bc > /dev/null 2>&1
 then
    echo "bc {basic calculator} not installed"
    read -p "To install press \"y\" or \"Y\" " choice
    if [[ $choice == 'y' || $choice == 'Y' ]]
    then
        sudo apt install bc
        echo "bc installed calculating average now ...."
        echo $SUM/$N | bc -l | xargs printf "Average to 3 decimal points is ${SUM}/${N}: %.3f \n"
    else
        echo "Sorry unable to calculate average, Install bc. Thanks."
    fi
 else
     echo $SUM/$N | bc -l | xargs printf "Average to 3 decimal points is ${SUM}/${N}: %.3f \n"
fi
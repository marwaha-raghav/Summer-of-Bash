#! /bin/bash

# Medium: Convert first letter of all the words in a file after storing them in an array.
array () {
    while read line
    do
        arr[$i]=$line
        ((++i))
    done < $1
    echo "${arr[@]/[A-Z]/.}"
}

main () {
    if [[ -z $1 ]]
    then
        echo "ENTER filename as command argument"
        exit 1
    else
        FILE=$1
        if [[  -e $FILE ]]
        then
            array $FILE
        else
            echo "File does not exist or not found"
            exit 1
        fi
    fi
}

main $@
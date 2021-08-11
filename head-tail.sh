#! /bin/bash

# Easy head 1 : Display first n-20 lines of a text file
# Easy head 2 : Display first 20 characters in a text file
# Easy tail 1 : Display last 20 lines of a text file
# Easy tail 2 : Dsiplay last 20 characters of a text file
# Easy Middle of a text file: Dsiplay from line 12-22 (both inclusive) in a text file

head1 (){
    echo "<<<<<<<<------- Running head1 : ---------->>>>>>>>"
    echo "$(head -n 20 $1)"
}

head2 () {
    echo "<<<<<<<-------- Running head2 ----------->>>>>>>"
    echo "$(head -c 20 $1)"
}

tail1 () {
    echo " <<<<<<------- Running Tail1 ---------->>>>>>"
    echo "$(tail -n 20 $1)"
}

tail2 () {
        echo "<<<<<<<<-------- Running Tail2 -------->>>>>>>>"
        echo "$(tail -c 20 $1)"
}

middle () {
    echo "<<<<<<<<-------- Running Middle -------->>>>>>>>"
    echo "$(head -n 5 $1 | tail -n 2)"
}
main (){
    FILE=$1
    if [[ -z $FILE ]]
    then
        echo "Enter command line argument"
    else
        if [[ -e $FILE ]]
        then
            # All function call statements
            head1 $FILE
            head2 $FILE
            tail1 $FILE
            tail2 $FILE
            middle $FILE
        else
            echo "File does not exist"
        fi
    fi
}
main "$@"
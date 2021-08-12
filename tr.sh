#! /bin/bash

# Easy : tr 1 : replace all parenthesis with [] in a given .txt file.
# Easy: tr 2 : delete all lowercase alphabets [a-z] from a file.
# Easy: tr 3 : replace double spaces with single space in a file.

tr1 (){
    cat $1 | tr '()' '[]'
}

tr2 () {
    cat $1 | tr -d "a-z"
}

tr3 () {
    cat $1 | tr -s "  "
}
main (){
    if [[ -z $1 ]]
    then
        echo "Enter filename as command line argument"
        exit 1
    else
        if [[ -e $1 ]]
        then
            FILE=$1
            # function call statements
            echo "Output for tr1 $(tr1 $FILE)"
            echo "Output for tr2 $(tr2 $FILE)"
            echo "Output for tr3 $(tr3 $FILE)"
        else
            echo "File not found"
            exit 1
            
        fi
    fi
}

main "$@"
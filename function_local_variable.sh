#! /bin/bash

# to run ./function_local_variable.sh

function file_count(){
    local FILE_QUANTITY=$(ls | wc -l)
    echo "The file quantity is for the currenty folder is ${FILE_QUANTITY}" 
}


file_count


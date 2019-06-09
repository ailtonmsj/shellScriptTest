#! /bin/bash

# to run ./function_local_variable.sh /opt/



function file_count(){

    local DIRECTORY=$1

    if [ -e ${DIRECTORY} ]
    then
        echo "${DIRECTORY}:" 

        local FILE_QUANTITY=$(ls ${DIRECTORY} | wc -l)
        echo "${FILE_QUANTITY}"
        return 0
    else
        echo "The directory ${DIRECTORY} doesn't exist"
        return 1
    fi
}


file_count $1


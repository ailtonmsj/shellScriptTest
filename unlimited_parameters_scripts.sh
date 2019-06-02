#! /bin/bash

# to run 

for FILE_PATH in $@ 
do

    if ! [ -a ${FILE_PATH} ]
    then
        echo "The file \"${FILE_PATH}\" doesn't exist"
    else
        if [ -f ${FILE_PATH} ]
        then
            echo "The file \"${FILE_PATH}\" is a regular file"
        elif [ -h ${FILE_PATH} ]
        then
            echo "The file \"${FILE_PATH}\" is a symbolic link"
        elif [ -d ${FILE_PATH} ]
        then
            echo "The file \"${FILE_PATH}\" is a directory"
        else
            echo "The file \"${FILE_PATH}\" is an other file type"
        fi
    fi
done
#! /bin/bash

read -p "Enter the file path: " FILE_PATH

if ! [ -a ${FILE_PATH} ]
then
    echo "The file ${FILE_PATH} doesn't exist"
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
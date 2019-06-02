#! /bin/bash

# to run
# ./conditional_script.sh

if [ -e /etc/shadow ]
then
    echo "The shadow file exists and passwords are enabled"

    if [ -w /etc/shadow ]
    then
        echo "The file is writeble"
    else
        echo "You don't have permission to write in the file"
    fi
else
    echo "The shadow file doesn't exist"
fi
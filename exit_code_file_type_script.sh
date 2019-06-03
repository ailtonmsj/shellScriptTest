#! /bin/bash

# to run: 
#   ./exit_code_file_type_script.sh

read -p "Enter the file path: " FILE_PATH

if [ -f ${FILE_PATH} ]; then
    exit 0
elif [ -d ${FILE_PATH} ]; then
    exit 1
else
    exit 2
fi
#! /bin/bash

grep echo variable_script.sh | while read LINE
do
    echo "ECHO LINE: ${LINE}"
done
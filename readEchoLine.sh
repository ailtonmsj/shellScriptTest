#! /bin/bash

# to run 
# ./readEchoLine.sh

# Only reads the "echoed" lines

grep echo variable_script.sh | while read LINE
do
    echo "ECHO LINE: ${LINE}"
done
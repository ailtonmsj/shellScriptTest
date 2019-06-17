#! /bin/bash

# to run ./readLine.sh

# to read a file line by line

LINE_NUM=1

while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < variable_script.sh
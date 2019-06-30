#! /bin/bash

# to run 
#./readLine.sh

# To read a file line by line

LINE_NUM=1

while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < variable_script.sh # can be any file
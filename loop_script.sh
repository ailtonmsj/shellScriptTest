#! /bin/bash

# execution example
# ./loop_script.sh "pig" "horse" "tiger" "man"

for ANIMAL in $@
do
    echo $ANIMAL
done

COUNTER=0
while [ $COUNTER -lt 10 ]
do
    echo "Counting ${COUNTER}"
    let COUNTER+=1
done
#! /bin/bash

# to run
# ./input_script.sh

# new line for input
read VALUE_1
echo $VALUE_1

# prompt mode - ask for input in the prompt message
read -p "Insert the some value:" VALUE_2
echo $VALUE_2

# silent mode (not echoed)
read -s VALUE_3
echo $VALUE_3

# silent mode with prompt
read -sp "Insert the password:" VALUE_4
echo $VALUE_4

# mask the input
unset VALUE_5;
while IFS= read -r -s -n1 valueInteration; do
  if [[ -z $valueInteration ]]; then
     echo
     break
  else
     echo -n '*'
     VALUE_5+=$valueInteration
  fi
done

echo $VALUE_5
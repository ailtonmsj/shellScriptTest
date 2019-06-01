#! /bin/bash

MESSAGE_1="Test Shell Script Variable"

MESSAGE_2="Test Shell Script Variable Old Style"

echo ${MESSAGE_1}

echo ${MESSAGE_2}

HOSTNAME=$(hostname)

echo "Running this in ${HOSTNAME}. ${HOSTNAME} can be is your local machine"
#! /bin/bash

# to run with error: 
#   ./exit_code_command_script.sh /etc/shadow
# to run with success: 
#   ./exit_code_command_script.sh exit_code_command_script.sh

if [ -f $1 ]; then
    echo "File doesn't exists"
    exit 3
fi

cat $1

EXIT_CODE=$?

if [ ${EXIT_CODE} -eq 0 ]; then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi


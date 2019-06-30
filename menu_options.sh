#! /bin/bash

# to run:
# ./menu_options.sh

# menu example using case statement

while true
do
    echo "Select the options (use \"q\" to quit):"
    echo "1. to Disk Usage"
    echo "2. to uptime system"
    echo "3. to users logged"

    read USER_CHOICE

    case $USER_CHOICE in

    1)
        df
        ;;
    2)
        uptime
        ;;
    3)
        who
        ;;
    q)
        break
        ;;
    *)
        echo "Invalid option"
        ;;

    esac
    echo
done
echo "Goodbye"



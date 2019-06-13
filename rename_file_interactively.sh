#! /bin/bash

# rename file in the current folder, asking for file extension (jpg,txt,csv,etc...) and add the prefix on it (default value YYYYMMDD)

# to run ./rename_file_interactively.sh

read -p "Enter the file extension: " FILE_EXTENSION
read -p "Enter the new prefix for the files: " FILE_PREFIX

if [ -z ${FILE_PREFIX} ]; then
    FILE_PREFIX=$(date +%Y%m%d)
fi

shopt -s nullglob

TOTAL_RENAMED_FILES=0

for FILE in *.${FILE_EXTENSION}
do
    NEW_FILE_NAME=${FILE_PREFIX}-${FILE}

    $(mv ${FILE} ${NEW_FILE_NAME})
    RENAME_STATUS=$?

    if [ ${RENAME_STATUS} -eq 0 ]; then
        echo "Renamed ${FILE} to ${NEW_FILE_NAME}"
        let TOTAL_RENAMED_FILES+=1
    else
        echo "The ${FILE} could not be renamed. Error code: ${RENAME_STATUS}"
    fi
done

echo "The total files renamed is ${TOTAL_RENAMED_FILES}"


#! /bin/bash

# to rename *.jpg files to YYYYMMDD-FILE_NAME.jpg

# to run ./rename_file.sh

TODAY=$(date +%Y%m%d)

# to treat a folder with no files
shopt -s nullglob

for FILE in *.[jJ][pP][gG]
do
    mv ${FILE} ${TODAY}-${FILE}
    # to test an see the results before change:
    #echo "${FILE} --> ${TODAY}-${FILE}"
done
#!/bin/bash
read -p "What's the file name with the folders you want to create? " file_name
if [[ -f "$file_name" ]]; then
    while read line; do
	mkdir "$line"
    done < $file_name
else
    echo "Not a valid file"
fi

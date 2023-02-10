#!/bin/bash
read -p file_name
while read line; do
    mkdir "$line"
done < $file_name


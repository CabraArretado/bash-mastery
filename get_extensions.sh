#!/bin/bash
read -p "First Name: " firstname
read -p "Last Name: " lastname
read -n 4 -p "Extension Number: " extensionnumber
echo # formating
read -n 4 -sp "Access Code: " accesscode
echo # formating

PS3="Department: "
select department in Sales Marketing; do
    echo "Department Selected $department"
    break
done

#save in csv
echo "$firstname,$lastname,$extension,$accesscode,$department" >> 'extensions.csv'



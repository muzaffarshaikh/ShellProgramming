#!/bin/bash
echo -n "Enter your name"
read var_name
echo "$var_name"

while true; do
    read input
    if [[ $input = "" ]] 
        then break 
    else 
        echo "Invalid Input."
    fi
done
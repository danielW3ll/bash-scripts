#!/bin/bash

# File Duplicator Script
# This script takes a file and a number as arguments and creates that many copies of the file
# Usage: ./filedupli.sh <file> <num_copies>
# Author: Daniel Wellermann (github.com/Wellermann)
# from Repository:
# bash-scripts (github.com/Wellermann/bash-scripts)

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file> <num_copies>"
    exit 1
fi

file="$1"
num_copies="$2"

if [ ! -f "$file" ]; then
    echo "Error: $file does not exist"
    exit 1
fi

if ! [[ "$num_copies" =~ ^[0-9]+$ ]]; then
    echo "Error: $num_copies is not a valid number"
    exit 1
fi

for i in $(seq 1 "$num_copies"); do
    cp "$file" "${i}"_"${file}"
done

echo "Copied $num_copies files"

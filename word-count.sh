#!/bin/bash

# Check if a filename was provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename or path>"
    exit 1
fi

FILE="$1"

# Check if the file exists
if [ -e "$FILE" ]; then
    echo "File: '$FILE' exists."
    # Check permissions if it exists
    if [ -r "$FILE" ]; then
        echo "File is readable."
    else
        echo "File is not readable."
    fi

    if [ -w "$FILE" ]; then
        echo "File is writable."
    else
        echo "File is not writable."
    fi
else
    echo "File: '$FILE' is not present."
fi

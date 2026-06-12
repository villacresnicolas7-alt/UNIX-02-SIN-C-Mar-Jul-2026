#!/bin/bash

# File to check
FILE="output.txt"

# Create the file if it does not exist
touch "${FILE}"
# Repeat until the file has content
until [[ -s "${FILE}" ]]; do
    # The file is empty
    echo "${FILE} is empty..."
    # Check again after 2 seconds
    echo "Checking again in 2 seconds..."
    # Wait for 2 seconds
    sleep 2
done
# The file now has content
echo "${FILE} appears to have some content in it!"
#du -sb output.txt
#0 output.txt
#echo "until_loop_will_now_stop!" > output.txt

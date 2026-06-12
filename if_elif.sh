#!/bin/bash
USER_INPUT="${1}"
if [[ -z "${USER_INPUT}" ]]; then
    echo "You must provide an argument!"
    exit 1
# Check if no argument was given
fi
if [[ -f "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a file."
# Check if the argument is a file
elif [[ -d "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a directory."
else
# Check if the argument is not a file or directory

    echo "${USER_INPUT} is not a file or a directory."
fi
# End of the script
#!/bin/bash

# File name used to stop the loop
SIGNAL_TO_STOP_FILE="stoploop"

# Loop while the file does not exist
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
    echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
    echo "Checking again in 2 seconds..."
    sleep 2
done

# Exit when the file is found
echo "File was found! Exiting..."
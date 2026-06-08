#!/bin/bash

nombre=$1
# Stores the first command-line argument in the variable "nombre" (first name)

apellido=$2
# Stores the second command-line argument in the variable "apellido" (last name)

date +"%d-%m-%Y" > output.txt
# Gets the current date in DD-MM-YYYY format and writes it to output.txt
# The ">" operator creates the file or overwrites its contents

echo "$nombre $apellido" >> output.txt
# Appends the first name and last name to output.txt.
# The ">>" operator adds text to the end of the file without deleting existing content

cp output.txt backup.txt
# Creates a copy of output.txt and saves it as backup.txt

cat output.txt
# Displays the contents of output.txt on the terminal screen

chmod +x exercise1.sh
# Grants execute permission to the script exercise1.sh
# allowing it to be run as a program
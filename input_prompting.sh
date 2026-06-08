#!/bin/bash
echo "What is your first name?" 
read -r firstname 
echo "What is your last name?" 
read -r lastname 
echo "Your first name is ${firstname} and your last name is ${lastname}"
chmod u+x input_prompting.sh
./input_prompting.sh

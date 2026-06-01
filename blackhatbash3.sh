#!/bin/bash
book="black_hat_bash"
echo "This books name is ${book}"
echo "This books name is $book"
root_directory=$(ls -ld /)
echo "${root_directory}"
unset book 
echo "${book}"
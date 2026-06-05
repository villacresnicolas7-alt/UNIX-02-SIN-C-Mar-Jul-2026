#!/bin/bash
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "el lzl commando fallo tio"
echo "Hello World!" > output.txt
cat output.txt
echo "bye  World!" > output.txt
cat output.txt
echo "bye  World!" >> output.txt
cat output.txt
ls -l / &> stdout_and_stderr.txt
ls -l / 1> stdout.txt 2> stderr.txt
cat stderr.txt
ls -l / 1> stdout.txt 2>> stderr.txt
cat stderr.txt
lzl 2> error.txt
cat error.txt
#!/bin/bash
for index in $(seq 1 10); do
  echo "${index}"
done

for ip_address in "$@"; do
  echo "Taking some action on IP address ${ip_address}"
done
touch example_file1 example_file2 example_file3


grep "35.237.4.214" log.txt
grep "35.237.4.214\|13.66.139.0" log.txt
grep -e "35.237.4.214" -e "13.66.139.0" log.txt


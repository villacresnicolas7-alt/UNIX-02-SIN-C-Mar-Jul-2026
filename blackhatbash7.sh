#!/bin/bash
for index in $(seq 1 10); do
  echo "${index}"
done

for ip_address in "$@"; do
  echo "Taking some action on IP address ${ip_address}"
done
touch example_file1 example_file2 example_file3
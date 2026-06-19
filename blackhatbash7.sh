#!/bin/bash
#!/bin/bash
for index in $(seq 1 10); do
  echo "${index}"
done

for ip_address in "$@"; do
  echo "Taking some action on IP address ${ip_address}"
done
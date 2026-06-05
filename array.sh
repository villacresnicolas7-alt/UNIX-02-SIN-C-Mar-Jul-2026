# Sets an array 
IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)
set +x

echo "${IP_ADDRESSES[*]}"
set -x

echo "${IP_ADDRESSES[0]}"
chmod u+x array.sh
./array.sh

unset IP_ADDRESSES[1]
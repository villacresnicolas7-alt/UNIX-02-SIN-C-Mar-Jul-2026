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

ps
ps | grep TTY
ps | grep tty
ps | grep -i tty

grep -v "35.237.4.214" log.txt
grep -o "35.237.4.214" log.txt

awk '{print $1}' log.txt
awk '{print $3}' log.txt
awk '{print $1,$2,$3}' log.txt
awk '{print $1,$NF}' log.txt
awk -F',' '{print $1}' example_csv.txt
echo "Tux Penguin,25,Mascota Linux,Antartida" >> text.csv
awk -F',' '{print $1}' text.csv
awk 'NR < 10' text.csv
grep "42.236.10.117" log.txt
awk '{print $7}'
grep "42.236.10.117" tex.csv | awk '{print $7}'
sed 's/Mozilla/Godzilla/g' log.txt
grep "Godzilla" log.txt
grep "Mozilla" log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
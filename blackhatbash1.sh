#!/bin/bash
set -x
bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${OSTYPE}
ps -e f
ps -ef
df --human-readable
#!/bin/bash
#!/usr/bin/env bash
bash -x
bash -r
#chmod u+x blackhatbash1.sh
#./blackhatbash1.sh
bash -n blackhatbash1.sh
set +x
bash blackhatbash1.sh

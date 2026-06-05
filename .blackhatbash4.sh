#!/bin/bash
    1  let result="4*5"
    2  echo ${result}
    3  result=$((5*5))
    4  echo ${result}
    5  result=$(expr 5 + 505)
    6  man expr
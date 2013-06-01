#!/usr/bin/env bash

echo -en "Mau angka sampe berapa cuy? "
read loop
check=$(echo $loop | sed s/[[:digit:]]//g)
if [[ $check == "" ]]; then
    for (( i = 1; i <= $loop; i++ )); do
        echo $i
    done
else
    echo "invalid"
fi

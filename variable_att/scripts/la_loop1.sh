#!/bin/bash

echo "Loop Count: $1"


for ((i=1 ; i <= $1 ; i++))
do
echo " Loop $i"
./la_test20.sh
sleep 30
done

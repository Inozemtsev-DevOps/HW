#!/bin/bash

count=0

while read l
do 
    count=$((count + 1))
done < "$1"

echo "Количество строк: $count"

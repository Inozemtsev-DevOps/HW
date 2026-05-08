#!/bin/bash

echo "Напиши любое предложение:"
read exists

revers=""

for i in $exists
do
    revers="$i $revers"
done

echo "$revers"

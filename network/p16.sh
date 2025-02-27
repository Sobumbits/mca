#!/bin/bash

read -p "Enter a number : " n

echo "Multiplication table for $n"

for i in {1..10}
do
	echo "$n X $i =  $(( n * i ))"
	
done



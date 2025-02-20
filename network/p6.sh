#!/bin/bash

echo "Enter first number"
read n1
echo "Enter second number"
read n2
echo "Enter third number"
read n3


if [ $n1 -eq $n2 ] && [ $n2 -eq $n3 ]; then 
	echo "All numbers are same"
else
	large=$n1
	if [ $n2 -gt $large ]; then
		large=$n2
	fi
	if [ $n3 -gt $large ]; then
		large=$n3
	fi
	echo "$large is largest number"
fi



#!/bin/bash

echo -n "Enter a number : "
read num

n=${#num}
tmp=$num
sum=0

while [ $num -gt 0 ]
do
	digit=$(( num % 10 ))
	sum=$(( sum + digit ** n ))
	num=$((num/10))	
done

if [ $tmp -eq $sum ];then
	echo "$tmp is amstrong number "
else 
	echo "$tmp is not amstrong number"
fi

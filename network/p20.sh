#!/bin/bash

fibonacci(){
	n=$1;
	a=0
	b=1
	echo "fibonacci series up to $n terms : "
	
	for (( i=0;i<n;i++ ))
	do
	 echo -n "$a "
	 temp=$(( a + b ))
	 a=$b
	 b=$temp
	done
	echo
}

read -p "Enter the number of terms: " num

fibonacci $num


#Enter the number of terms: 5
#fibonacci series up to 5 terms : 
#0 1 1 2 3 


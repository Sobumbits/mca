#!/bin/bash
calculate(){
 first=$f
 second=$s
 operator=$op
 
 case $operator in 
 	+) result=$(( first + second));;
 	-) result=$(( first - second));;
 	\*) result=$(( first * second));;
 	/) result=$(( first / second));;
 	%) result=$(( first % second));;
 	*) echo "Invalid operator";exit 1;;
 esac 
 echo "Result : $result"
}

read -p "Enter the first number : " f
read -p "Enter the operator(+,-,*,/,%) : " op
read -p "Enter the second number : " s

calculate $f $op $s




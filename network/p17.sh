#!/bin/bash

read -p "Enter mark for subject 1 : " s1
read -p "Enter mark for subject 2 : " s2
read -p "Enter mark for subject 3 : " s3

tot=$((s1+s2+s3))


echo "Total mark is $tot"

if [ $tot -ge 270 ];then
  grade="A"
elif [ $tot -ge 240 ];then
  grade="B"
elif [ $tot -gt 210 ];then
  grade="C"
elif [ $tot -gt 180 ];then
  grade="D"
else
  grade="E"
fi

echo "Your grade is $grade"


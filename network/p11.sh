#!/bin/bash

names=("sobu" "anandhan" "ajay")
 echo "Numbers of names:${#names[@]}"
 
echo "Name at index 2 : ${names[2]}"

for name in "${names[@]}";do
echo $name
done

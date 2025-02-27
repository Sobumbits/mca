#!/bin/bash

read -p "Enter a string : " st

rev=$( echo "$st" | rev)

if [ "$st" == "$rev" ]; then
	echo "String is palindrom"
else
	echo "String is not palindrom"
fi

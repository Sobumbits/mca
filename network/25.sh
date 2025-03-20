#!/bin/bash

while true
do
echo 
echo 
echo "------MENU------"
echo 
echo "1. Search for a movie name in a file"

echo "2. Count occurrences of a movie name"

echo "3. Find movies starting or ending with a specific word"

echo "4.Display only the first match"

echo "5.Count total movies (words) in the file"

echo "6.Replace a movie name in the file"

read -p "Choose an option : " opt
echo 
case $opt in
	1) echo "Enter the filename :"
		read filename
		echo "Enter the movie to search :"
		read word
		grep -n "$word" "$filename"
		;;
	2) echo "Enter the filename :"
		read filename
		echo "Enter the movie name :"
		read word
		grep -c "$word" "$filename"
		;;
	3) echo "Enter the filename :"
		read filename
		echo "Enter the movie name :"
		read word
		grep "^$word" "$filename"
		grep "$word$" "$filename"
		;;
	4) echo "Enter the filename  :"
		read filename

		echo "Enter the movie to search : "
		read word
		grep -m 1 "$word" "$filename"
		;;
	5) echo "Enter the filename  :"
		read filename

		wc -w < "$filename"
		;;
	6) echo "Enter the filename  :"
		read filename
		echo "Enter the word to replace  :"
		read oldword
		echo "Enter the new word :"
		read newword
		sed -i "s/$oldword/$newword/g" "$filename"
		;;
	7) exit 0
		;;
	*) echo "Invalid option....";
	esac
done

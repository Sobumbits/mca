#!/bin/bash
echo "Enter the word to search at the end of a line :"
read word
echo "Enter the filename :"
read filename
grep "$word$" "$filename"



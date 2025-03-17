#!/bin/bash
echo "Enter the word to search at the beginning of the line :"
read word
echo "Enter the filename :"
read filename
grep "^$word" "$filename"

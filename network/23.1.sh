#!/bin/bash
echo "Enter the word to search :"
read word
echo "Enter the filename :"
read filename
grep "$word" "$filename"

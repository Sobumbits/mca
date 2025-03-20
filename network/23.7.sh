#!/bin/bash

echo "Enter the filename :"
read filename

echo "Enter the word to search (case-in sensitive) :"
read word
grep -i "$word" "$filename"

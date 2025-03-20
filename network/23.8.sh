#!/bin/bash

echo "Enter the filename :"
read filename

echo "Enter the word to exclude :"
read word
grep -v "$word" "$filename"

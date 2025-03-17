#!/bin/bash
echo "Enter the word to highlight :"
read word
echo "Enter the filename :"
read filename
GREP_COLORS='mt=32' grep --color=always "$word" "$filename"


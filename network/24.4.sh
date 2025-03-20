#!/bin/bash
echo "Enter the filename  :"
read filename

sort "$filename" | uniq -d

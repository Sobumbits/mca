#!/bin/bash
echo "Enter the filename  :"
read filename

wc -w < "$filename"

#!/bin/bash

echo "Enter the filename :"
read filename

grep -c "^$" "$filename"

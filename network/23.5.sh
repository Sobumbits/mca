#!/bin/bash

echo "Enter the filename :"
read filename
grep "^[0-9]\+$" "$filename"

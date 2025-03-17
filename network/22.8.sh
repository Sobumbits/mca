#!/bin/bash
echo "Enter the filename :"
read filename
chmod 644 "$filename"
echo "Owner can read/write , other can only read $filename." 

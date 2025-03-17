#!/bin/bash
echo "Enter the filename :"
read filename
chmod 744 "$filename"
echo "Owner can read/write/execute , other can only read $filename." 

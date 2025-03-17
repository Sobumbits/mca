#!/bin/bash
echo "Enter the filename to make read-only :"
read filename
chmod 444 "$filename"
echo "$filename is now readonly for everyone." 

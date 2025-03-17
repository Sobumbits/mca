#!/bin/bash
echo "Enter the filename to make executable :"
read filename
chmod +x "$filename"
echo "Execute permission granted for $filename" 

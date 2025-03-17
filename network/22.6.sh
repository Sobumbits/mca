#!/bin/bash
echo "Enter the filename to grant full permission :"
read filename
chmod 777 "$filename"
echo "Full permissions (rwxrwxrwx) granted to everyone for $filename." 

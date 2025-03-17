#!/bin/bash
echo "Enter the filename to remove all permission :"
read filename
chmod 000 "$filename"
echo "All permissions removed from $filename." 

#!/bin/bash
echo "Enter the filename :"
read filename
chmod 750 "$filename"
echo "Owner has full permissions , group can read and execute $filename." 

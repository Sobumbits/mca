#!/bin/bash
echo "Enter the filename to set owner permission :"
read filename
chmod 700 "$filename"
echo "Owner has full permission on $filename, other have none." 

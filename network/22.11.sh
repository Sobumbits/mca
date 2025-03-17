#!/bin/bash
echo "Enter the filename to reset permissions :"
read filename
chmod 644 "$filename"
echo "Permissions reset to default: rw-r--r--." 

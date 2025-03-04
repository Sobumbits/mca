#!/bin/bash


echo "Enter the filename:"
read filename

if [ -e "$filename" ]; then
echo "file exists."

if [ -r "$filename" ]; then
echo "file is readable."
else
echo "file is not readable."
fi

if [ -w "$filename" ]; then
echo "file is writable."
else
echo "file is not writable."
fi

if [ -r "$filename" ] && [ -w "$filename" ]; then
echo "file is both readable and writable."
else
echo "file  is not both readable and writable."
fi

else
echo "File does not exist."
fi

#Enter the filename:
#1.sh
#file exists.
#file is readable.
#file is writable.
#file is both readable and writable.


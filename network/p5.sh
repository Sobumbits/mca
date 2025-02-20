#!/bin/bash

echo "Enter a number"
read num

if [ $(( num % 2)) -eq 0 ]; then
echo "$num is even number"
else "$num is odd number"
fi

#!/bin/bash
echo -n "Enter the process name or PID (eg. firefox,chrome,bash or 1234):"
read process

if [ -z "$process" ]; then
 echo "No input provided existing."
 exit 1
 fi
 
 ps aux | grep -w "$process" | grep -v "grep" || echo "No such process found : $process"
  

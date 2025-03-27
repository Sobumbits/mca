#!/bin/bash
echo -n "Enter the process name or PID (eg. firefox,chrome,bash or 1234):"
read process


 count=$( ps aux | grep -w "$process" | grep -v "grep" | wc -l )
 echo "Number of running instance of $process : $count "
  

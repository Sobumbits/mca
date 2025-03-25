#!/bin/bash
if [ $# -ne 1 ]; then
	exit 1
fi

username=$1
output_file="login_report.txt"

echo "Last login: " > $output_file
last -n 1 $username >> $output_file

echo "\nFailed Logins:" >> $output_file

grep "Failed password" /var/log/auth.log | grep "$username" >> $output_file 2>/dev/null

echo "Report saved to $output_file" 

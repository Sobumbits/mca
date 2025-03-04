#!/bin/bash


echo "Enter the filename:"
read filename

if [ ! -e "$filename" ]; then
echo "file does not exists."
exit 1
fi

echo "Files exists. Choose an operation:"
echo "1. Copy"
echo "2. Edit"
echo "3. Rename"
echo "4. Delete"
echo "5. Exit"
read -p "Enter your choice: " choice

case $choice in
	1)
		read -p "Enter destination of filename: " dest
		cp "$filename" "$dest"
		echo "File copied successfully."
		;;
	2) 
	 	gedit "$filename" &
	 	;;
	 3)
	 	read -p "Enter new filename: " newname
	 	mv "$filename" "$newname"
	 	echo "File renamed successfully."
	 	;;
	 4)

	 	rm "$filename"
	 	echo "File deleted successfully."
	 	;;
	 5)
	 	echo "exiting program."
	 	exit 0
	 	;;
	 
	 *) 
	 	echo "Invalid choice."
	 	;;
esac


Enter the filename:
1.sh
Files exists. Choose an operation:
1. Copy
2. Edit
3. Rename
4. Delete
5. Exit
Enter your choice: 1
Enter destination of filename: newq.sh
File copied successfully.


Enter the filename:
1.sh
Files exists. Choose an operation:
1. Copy
2. Edit
3. Rename
4. Delete
5. Exit
Enter your choice: 2


Enter the filename:
1.sh
Files exists. Choose an operation:
1. Copy
2. Edit
3. Rename
4. Delete
5. Exit
Enter your choice: 3 
Enter new filename: newq1
File renamed successfully.


Enter the filename:
newq1
Files exists. Choose an operation:
1. Copy
2. Edit
3. Rename
4. Delete
5. Exit
Enter your choice: 4
File deleted successfully.


Enter the filename:
2.sh
Files exists. Choose an operation:
1. Copy
2. Edit
3. Rename
4. Delete
5. Exit
Enter your choice: 5
exiting program.


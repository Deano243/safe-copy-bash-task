#!/bin/bash
#validate the the file exist and if the file is writablei
file_name=$1
if [[  -e "$file_name" ]]; then
	echo "file exist"
elif [[ -w  "$file_name" ]]; then
	echo "file is writable"
else
	echo "file is not exist and not writable"
fi

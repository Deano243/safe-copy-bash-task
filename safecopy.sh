#!/bin/bash
#validate the the file exist and if the file is writablei
file_name=$1
if [[ ! -e "$file_name" ]]; then
	echo "file is not exist"
elif [[ ! -w  "$file_name" ]]; then
	echo "file is exist and not writable"
else
	echo "file is exist and  writable"
fi

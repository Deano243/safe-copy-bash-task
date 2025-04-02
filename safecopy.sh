#!/bin/bash
#validate if the file is exist and if the file is writable
source_name=$1
destination_name=$2
if [[ ! -e "$source_name" ]]; then
	echo "file is not exist"
elif [[ ! -w  "$source_name" ]]; then
	echo "file is exist and not writable"
else
	echo "file is exist and  writable"
fi
#calculating the size of the source file and the free space in the destination
source_size=$(du -sh "$source_name")
destination_space=$(df -h "$destination_name")
echo "source size is $source_size and the available space in the destination is $destination_space"

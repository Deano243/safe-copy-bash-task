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
source_size=$(du -s "$source_name"| awk '{print 1}')
destination_space=$(df --output=avail "$destination_name"| tail -1)
#if space is sufficient display stats and ask user to confirm with the operation
check_size() {
if [[ "$source_size" -lt "$destination_space" ]]; then
	echo "source size is $source_size KB and the available space in the destination is $destination_space KB"
read -p "do you want to continue with the operation y/n?" user_choice
if [[ "$user_choice" == n ]]; then
	echo "stop everything"
	exit 1
fi
#if there is not sufficient space print that and delete old files"
else
	echo "there is not enough space"
	find "$destination_name" -type f -mtime +30 -exec rm -f {} \;
fi
done
}
check_size

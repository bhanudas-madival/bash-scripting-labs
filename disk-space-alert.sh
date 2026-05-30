#!/bin/bash

disk_space=$(df -h /mnt/c | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$disk_space" -gt 80 ]
then 
	echo "WARNING : Current disk space is $disk_space% used"
else 
	echo "Disk is $disk_space% used"
fi

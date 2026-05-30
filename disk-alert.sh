#!/bin/bash 

THERSHOLD=90

disk_usage=$(df -h /mnt/d | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$disk_usage" -gt "$THERSHOLD" ]
then 
	echo "WARNING: Disk is $disk_usage% used"
else 
	echo "Disk usage is $disk_usage%"
fi

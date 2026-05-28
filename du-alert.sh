#!/bin/bash

usage=$(df /mnt/d | awk 'NR==2 {print $5}' | tr -d '%')

echo $usage

if [ $usage -gt 1 ]
then 
	echo "WARNING: Disk usage is above 80%"
else 
	echo "Disk usage is normal"
fi 

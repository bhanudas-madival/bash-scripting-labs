#!/bin/bash

usage=$(df -h /mnt/c | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$usage" -gt 80 ]

then 
	echo "WARNING: Disk usage is ${usage}%"
else 
	echo "Disk usage is normal ${usage}%"
fi

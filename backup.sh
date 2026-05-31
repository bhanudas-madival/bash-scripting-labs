#!/bin/bash 

if [ -z "$1" ] 
then 
	echo "Usage: ./backup.sh <directory>"
	exit 1
fi


tar -czf backup.tar.gz "$1" 

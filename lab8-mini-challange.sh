#!/bin/bash

set -e 

if [ $# -eq 0 ]
then
	echo "Usage: $0 <directory>"
	exit 1
fi 

dir="$1"

if [ -d "$dir" ]
then
	echo "Creating backup..."
	
	tar -czf backup.tar.gz "$dir"

	echo "Backup Complete Successfully"
else 
	echo "Directory does not exist"
	exit 1
fi 



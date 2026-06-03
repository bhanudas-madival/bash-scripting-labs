#!/bin/bash

tar -czf backup.tar.gz "$1"

status=$?

if [ $status -eq 0 ]
then 
	echo "Backup Successful"
	tar -tzf backup.tar.gz

elif [ -z "$1" ]
then 
	echo "Backup not Successful -> Enter valid directory"
fi

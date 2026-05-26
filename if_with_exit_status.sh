#!/bin/bash

if [ -d rtest ]
then 
	status=$?
	echo "exit code is : $status"
	echo "Directory exists"

else 
	status=$?
	echo "exit code is : $status"
	echo "Directory does not exist"
fi

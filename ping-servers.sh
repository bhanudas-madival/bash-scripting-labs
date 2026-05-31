#!/bin/bash


for server in "$@"
do 
	ping -c 2 "$server" > /dev/null 2>&1
	
	status=$?
	
	if [ "$status" -eq 0 ]
	then 
		echo "$server is rechable"
	else 
		echo "$server is not rechable"
	fi
done	

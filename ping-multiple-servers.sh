#!/bin/bash

for website in google.com github.com wrongdomain.local
do
	ping -c 2 "$website" > /dev/null 2>&1

	if [ "$?" -eq 0 ]
	then 
		echo "$website is rechable"
	else
		echo "$website is not rechable"
	fi
done 


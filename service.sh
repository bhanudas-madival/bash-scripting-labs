#!/bin/bash

systemctl is-active nginx > /dev/null 2>&1 
status=$?

if [ $status -eq 0 ]
then 
	echo "nginx is running"
else
	echo "nginx is stopped"
fi

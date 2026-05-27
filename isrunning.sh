#!/bin/bash

systemctl is-active nginx > /dev/null 2>&1

status=$?

if [ $status -eq 0 ] 
then 
	echo "running"
else 
	echo "stopped"
fi

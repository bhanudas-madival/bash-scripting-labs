#!/bin/bash


systemctl is-active ssh > /dev/null

if [ $? -eq 0 ]
then
	echo "ssh service is runnign"
else
	echo "ssh service is not running"
fi 

#!/bin/bash

service=cron

systemctl is-active $service > /dev/null 2>&1

if [ "$?" -eq 0 ]
then 
	echo "Exit status is $? and $service is running "
else 
	echo "Exit status is $? and $service is stopped "
fi 	

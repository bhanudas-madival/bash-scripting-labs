#!/bin/bash

systemctl is-active cron > /dev/null


if [ $? -eq 0 ]
then 
	echo "Service runnign"
else 
	echo "Service Stopped "
fi 

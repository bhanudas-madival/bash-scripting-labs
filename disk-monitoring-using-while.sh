#!/bin/bash

while true 
do 
	df -h / | awk 'NR==2'
	sleep 2
done


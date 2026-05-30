#!/bin/bash

while true
do
	systemctl is-active nginx
	sleep 2
done

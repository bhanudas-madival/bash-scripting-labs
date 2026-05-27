#!/bin/bash

if systemctl is-active --quiet nginx 
then
	echo "running"
else
	echo "stopped"
fi


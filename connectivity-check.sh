#!/bin/bash

> rechable.txt
> unrechable.txt 

while read server
do  
	if ping -c 1 "$server" > /dev/null 2>&1
	then 
		echo "[OK] $server" >> rechable.txt 
	else 
		echo "[FAIL] $server" >> unrechable.txt 
	fi

done < servers.txt 

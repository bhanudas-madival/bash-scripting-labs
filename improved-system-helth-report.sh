#!/bin/bash

echo "========== Improved System Health Report =========="
echo "Generated At: $(date)"


echo 
echo "Hostname"
hostname 

echo 
hostname > /dev/null 2>&1
status=$?
if [ $status -eq 0 ]
then 
	echo "Hostname Check: PASS"
else
	echo "Hostname Check: FAIL"
fi

echo 
echo "Uptime"
uptime 

echo
echo "Memory"
free -h 

echo 
echo "Disk"
df -h /

echo
echo "Identify Disk Full"
df -h | grep -E '8[0-9]%|9[0-9]%|100%'

echo 
echo "Logged Users" 
who 

echo
FAILED_COUNT=$(systemctl --failed --no-legend 2>/dev/null | wc -l)

echo 
echo "Failed Services Count: $FAILED_COUNT"

if [ "$FAILED_COUNT" -gt 0 ]
then
	systemctl --failed
fi 

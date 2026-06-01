#!/bin/bash


echo "========= SYSTEM HEALTH REPORT ========="
echo "Generated At: $(date)"


echo 
echo "Hostname:"
hostname

echo 
echo "Uptime"
uptime

echo
echo "Memory Usage:"
free -h 

echo 
echo "Disk Usage:"
df -h 

echo 
echo "Logged In Users:" 
who 

echo 
echo "Failed Servces:"
systemctl --failed 

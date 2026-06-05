#!/bin/bash 

echo >> /home/bhanu/projects/bash-scripting-labs/temp/health.log
echo "=====$(date)=====" | tee >> /home/bhanu/projects/bash-scripting-labs/temp/health.log 

echo >> /home/bhanu/projects/bash-scripting-labs/temp/health.log
echo "System Uptime" | tee >> /home/bhanu/projects/bash-scripting-labs/temp/health.log
uptime | tee >> /home/bhanu/projects/bash-scripting-labs/temp/health.log


echo >> /home/bhanu/projects/bash-scripting-labs/temp/health.log
echo "RAM & SWAP Usage" | tee >> /home/bhanu/projects/bash-scripting-labs/temp/health.log
free -h |tee >> /home/bhanu/projects/bash-scripting-labs/temp/health.log


echo >> /home/bhanu/projects/bash-scripting-labs/temp/health.log
echo "Disk Usages of root Directory" | tee >> /home/bhanu/projects/bash-scripting-labs/temp/health.log 
df -h / | tee >> /home/bhanu/projects/bash-scripting-labs/temp/health.log 


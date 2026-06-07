#!/bin/bash

REPORT="server-report.txt"
>"$REPORT"

echo "===== SERVER HEALTH REPORT =====" >> "$REPORT"
echo "===== Generated: $(date)" >> "$REPORT"

echo "" >> "$REPORT"
echo "===== HOSTNAME =====" >> "$REPORT"
hostname >> "$REPORT"

echo "" >> "$REPORT"
echo "===== UPTIME ===== " >> "$REPORT"
uptime >> "$REPORT"

echo "" >> "$REPORT"
echo "===== MEMORY =====" >> "$REPORT"
free -h >> "$REPORT"

echo "" >> "$REPORT"
echo "===== CPU =====" >> "$REPORT"
top -bn1 | head -20 >> "$REPORT"

echo "" >> "$REPORT"
echo "===== DISK USAGE =====" >> "$REPORT"
df -h  >> "$REPORT"

echo "" >> "$REPORT"
echo " ===== TOP PROCESSES ===== " >> "$REPORT"
ps aux --sort=-%cpu | head >> "$REPORT" 

echo "" >> "$REPORT"
echo " ===== FAILED SERVICES ===== " >> "$REPORT"
systemctl --failed --type=service >> "$REPORT"

echo "" >> "$REPORT"
echo "===== NETWORK PORTS =====" >> "$REPORT"
ss -tulnp >> "$REPORT"

echo "" >> "$REPORT"
echo "===== END OF REPORT =====" >> "$REPORT"

echo "Report saved to $REPORT"

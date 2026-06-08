#!/bin/bash

REPORT="server-report.txt"
> "$REPORT"

echo "===== Server Health Report=====" >> "$REPORT"
echo "Generated: $(date)" >> "$REPORT"

collect_hostname(){
echo "" >> "$REPORT"
echo "===== HOSTNAME =====" >> "$REPORT"
hostname >> "$REPORT"
}

collect_uptime(){
echo "" >> "$REPORT"
echo "===== UPTIME =====" >> "$REPORT"
uptime >> "$REPORT"
}

collect_memory(){
echo "" >> "$REPORT"
echo "===== MEMORY =====" >> "$REPORT"
free -h >> "$REPORT"
}

collect_cpu(){
echo "" >> "$REPORT"
echo "===== CPU =====" >> "$REPORT"
(top -bn1 | head -20) >> "$REPORT"
}

collect_disk_usage(){
echo "" >> "$REPORT"
echo "===== DISK USAGE =====" >> "$REPORT"
df -h  >> "$REPORT"
}

collect_top_processes(){
echo "" >> "$REPORT"
echo "===== TOP PROCESSES =====" >> "$REPORT"
ps aux --sort=-%cpu | head >> "$REPORT" 
}

collect_failed_services(){
echo "" >> "$REPORT"
echo "===== FAILED SERVICES =====" >> "$REPORT"
systemctl --failed --type=service >> "$REPORT"
}

collect_network_report(){
echo "" >> "$REPORT"
echo "===== NETWORK PORTS =====" >> "$REPORT"
ss -tulnp >> "$REPORT"
}



main(){
	echo "Generating report..."
	collect_hostname
	collect_uptime
	collect_memory
	collect_cpu
	collect_disk_usage
	collect_top_processes
	collect_failed_services
	collect_network_report

	echo "" >> "$REPORT"
	echo "===== END OF REPORT =====" >> "$REPORT"


	echo "Report saved to $REPORT"
}

main

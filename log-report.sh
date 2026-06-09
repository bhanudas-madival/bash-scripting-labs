#!/bin/bash

Report="log-report.txt"

create_report(){

	echo "===== LOG REPORT =====" > "$Report" # > will rewrite file everytime without appending existing 
	echo "Creating on: $(date)" >> "$Report"
}

collect_errors(){
	echo "" >> "$Report"
	echo "Collecting last 1 errors from syslog file" >> "$Report"
	grep -i "error" /var/log/syslog | tail -1 >> "$Report"
}

collect_warnings(){
	echo "" >> "$Report"
	echo "collecting last 1 warnings from syslog file" >> "$Report"
	grep -i "warning" /var/log/syslog | tail -1 >> "$Report"
}

collect_failed_logins(){
	echo "" >> "$Report"
	if grep -i "failed password" /var/log/auth.log > /dev/null
	then 
		grep -i "failed password" /var/log/auth.log >> "$Report" 
	else
		echo "No failed attempts found" >> "$Report"
	fi 

}

count_errors(){
	echo "" >> "$Report"
	error_count=$(grep -ic "error" /var/log/syslog) 

	echo "Number of errors found: $error_count" >> "$Report"
}

main(){
	create_report
	collect_errors
	collect_warnings
	collect_failed_logins
	count_errors
}

main

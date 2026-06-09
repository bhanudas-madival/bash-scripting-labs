#!/bin/bash 

report="new-log-report.txt"

create_file(){
	echo "====== LOG REPORT =====" > "$report"
	echo "Creating on: $(date)" >> "$report"
}

count_errors(){
	echo "" >> "$report"
	error_count=$(grep -ic "error" sample.log) 
	echo "Number of errors found: $error_count" >> "$report"
}

count_warnings(){
	echo "" >> "$report"
	warnings_count=$(grep -ic "warning" sample.log)
	echo "Number of warnings found: $warnings_count" >> "$report"
}

extract_ips(){
	echo "" >> "$report"
	echo "IP addresses list in file" >> "$report"
	awk '{print $NF}' sample.log >> "$report"
}

top_ips(){
	echo "" >> "$report"
	echo "unique ip addresses and there duplicate count" >> "$report"
	(awk '{print $NF}' sample.log | sort | uniq -c) >> "$report"

}
main (){
	create_file
	count_errors
	count_warnings
	extract_ips
	top_ips
}

main



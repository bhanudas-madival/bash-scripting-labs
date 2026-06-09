#!/bin/bash

pull_code(){
	git pull
}

restart_service(){
	sudo systemctl restart nginx > /dev/null 2>&1
	status=$?
	if [ $status -eq 0 ]
	then 
		echo "nginx is successfully restrated"
	else 
		echo "Failed to restart nginx restart"
	fi 	
}


verify_service(){
	systemctl is-active nginx > /dev/null 2>&1
       	status=$?
	if [ $status -eq 0 ]
	then 
		echo "nginx is active"
	else 

		echo "nginx is not active"
	fi
}

verify_application(){
	curl http://localhost > /dev/null 2>&1
	status=$?
	if [ $status -eq 0 ]
	then 
		echo "Application reachable"
	else 
		echo "Application check failed"
	fi
}


main(){
	pull_code
	restart_service
	verify_service
	verify_application
}

main 

#!/bin/bash

check_nginx(){
	status=$(systemctl is-active nginx)
	echo "Nginx: $status"
}

check_ssh(){
	status=$(systemctl is-active ssh)
	echo "ssh: $status"
}

check_docker(){
	status=$(systemctl is-active docker)
	echo "docker: $status"
}

check_nginx
check_ssh
check_docker 

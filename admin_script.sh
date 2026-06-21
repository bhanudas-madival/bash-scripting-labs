#!/bin/bash 

read -p "Choose action (status/restart): " action

	case $action in 
		status)
			systemctl status nginx 
			;;
		restart)
			systemctl restart nginx 
			echo "Nginx restarted"
			;;
		*)
			echo "Invalid option"
			;;
	esac 

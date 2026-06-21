#!/bin/bash

read -p "Enter action (start/stop/restart/status):" action 

case $action in 
	start)
		echo "Starting service"
		;;
	stop)
		echo "Stopping service"
		;;
	restart)
		echo "Restarting service"
		;;
	status )
		echo "Checking service statu"
		;;
	*)
		echo "Invalid action"
		;;
	esac

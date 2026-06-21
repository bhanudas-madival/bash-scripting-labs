#!/bin/bash

read -p "Enter filename" file

	case $file in 
		*.txt)
			echo "Text file"
			;;
		*.zip)
			echo "Zip file"
			;;
		*.log)
			echo "Log file"
			;;
		*.sh)
			echo "Shell script"
			;;
		*)
			echo "Unknown file type"
			;;
	esac 

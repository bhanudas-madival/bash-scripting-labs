#!/bin/bash 

read -p "Enter username: " username 

if [ -z "$username" ]
then 
	echo "Username cannot be empty"
fi 

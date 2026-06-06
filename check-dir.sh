#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Usage: $0 <directory>"
	exit 1
fi

echo "Directory is: $1"

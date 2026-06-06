#!/bin/bash 

set -e 

echo "Starting backup...."

cd /tmp/testdir

echo "Creating archive..."

tar -czf backup.tar.gz data

echo "Backup completed"


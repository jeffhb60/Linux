#!/bin/bash

# Log Cleanup Script
# This script cleans up old log files to free up disk space.

LOG_DIR="/var/log"
DAYS_TO_KEEP=7

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS_TO_KEEP -exec rm -f {} \;
echo "Old log files older than $DAYS_TO_KEEP days have been deleted."

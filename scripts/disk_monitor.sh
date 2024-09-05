#!/bin/bash

# Disk Usage Monitoring Script
# This script checks disk usage and sends an alert if usage exceeds a specified threshold.

THRESHOLD=80

DISK_USAGE=$(df -h / | grep -vE '^Filesystem' | awk '{ print $5 }' | sed 's/%//g')

if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
  echo "Disk usage is above $THRESHOLD%. Current usage: $DISK_USAGE%"
  # You can add email notification or other alerting methods here.
else
  echo "Disk usage is below $THRESHOLD%. Current usage: $DISK_USAGE%"
fi

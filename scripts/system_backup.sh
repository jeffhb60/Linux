#!/bin/bash

# System Backup Script
# This script backs up specified directories to a backup location.

SOURCE_DIRS="/home /etc /var/www"
BACKUP_DIR="/backup"
DATE=$(date +%Y%m%d)

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

mkdir -p "$BACKUP_DIR"

for DIR in $SOURCE_DIRS; do
  if [ -d "$DIR" ]; then
    tar -czf "$BACKUP_DIR/$(basename "$DIR")_$DATE.tar.gz" "$DIR"
    echo "Backup of $DIR completed."
  else
    echo "Directory $DIR does not exist."
  fi
done

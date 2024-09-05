#!/bin/bash

# Software Updater Script
# This script updates the system's software packages.

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

echo "Updating system packages..."
apt-get update -y && apt-get upgrade -y
echo "System packages updated successfully."

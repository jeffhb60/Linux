#!/bin/bash

# User Management Script
# This script adds, removes, or lists users on the system.

ACTION=$1
USERNAME=$2

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

case $ACTION in
  add)
    if id "$USERNAME" &>/dev/null; then
      echo "User $USERNAME already exists."
    else
      useradd -m "$USERNAME"
      echo "User $USERNAME added successfully."
    fi
    ;;
  remove)
    if id "$USERNAME" &>/dev/null; then
      userdel -r "$USERNAME"
      echo "User $USERNAME removed successfully."
    else
      echo "User $USERNAME does not exist."
    fi
    ;;
  list)
    echo "Current users on the system:"
    cut -d: -f1 /etc/passwd
    ;;
  *)
    echo "Usage: $0 {add|remove|list} [username]"
    exit 1
    ;;
esac

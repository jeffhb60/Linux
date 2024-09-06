# Linux System Automation Scripts

## Overview

Welcome to the **Linux System Automation Scripts** repository! This collection of Bash scripts is designed to automate common Linux system administration tasks. The scripts in this repository can help Linux administrators streamline their workflows by automating tasks such as user management, system backups, disk usage monitoring, log cleanup, and software updates.

## Table of Contents

- [Scripts Included](#scripts-included)
- [Getting Started](#getting-started)
- [Script Details](#script-details)
  - [User Management (`user_management.sh`)](#user-management-(`user-management.sh`))
  - [System Backup (`system_backup.sh`)](#system-backup-systembackupsh)
  - [Disk Usage Monitoring (`disk_monitor.sh`)](#disk-usage-monitoring-diskmonitorsh)
  - [Log Cleanup (`log_cleanup.sh`)](#log-cleanup-logcleanupsh)
  - [Software Updater (`software_updater.sh`)](#software-updater-softwareupdatersh)
- [Cron Job Examples](#cron-job-examples)
- [Contributing](#contributing)

## Scripts Included

1. **`user_management.sh`** - Automates user management tasks such as adding, removing, and listing users.
2. **`system_backup.sh`** - Creates backups of important directories and stores them in a specified location.
3. **`disk_monitor.sh`** - Monitors disk usage and sends an alert if disk usage exceeds a specified threshold.
4. **`log_cleanup.sh`** - Cleans up old log files to free up disk space.
5. **`software_updater.sh`** - Automatically updates the system's software packages.

## Getting Started

### Prerequisites

- A Linux-based system (e.g., Ubuntu, CentOS, Debian)
- Basic knowledge of Bash scripting and Linux command-line operations
- Root privileges (some scripts require elevated permissions)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/linux-system-automation.git
   cd linux-system-automation
   ```
2. Make the scripts executable
   ```bash
   chmod +x scripts/*.sh
   ```
3. Customize the scripts as needed for your environment.

## Script Details

### User Management (`user_management.sh`)
> Automates user management tasks such as adding, removing, and listing users on the system.
* **Usage**:
  ```bash
  sudo ./scripts/user_management.sh {add|remove|list} [username]
  ```
* **Examples**:
  - Add a user: `sudo ./scripts/user_management.sh add jeff`
  - Remove a user: `sudo ./scripts/user_management.sh remove jeff`
  - List all users: `sudo ./scripts/user_management.sh list`

### System Backup (`system_backup.sh`)
> Creates backups of specified directories and stores them in a designated backup location.
* **Usage**:
  ```bash
  sudo ./scripts/system_backup.sh
  ```
* **Customize**: Edit the `SOURCE_DIR`S and `BACKUP_DIR` variables in the script to specify directories to back up and the backup destination.
  
### Disk Usage Monitoring (`disk_monitor.sh`)
> Monitors disk usage and sends an alert if usage exceeds a specified threshold (default is 80%).
* **Usage**:
  ```bash
  ./scripts/disk_monitor.sh
  ```
* **Customization**: Adjust the `LOG_DIR` and `DAYS_TO_KEEP` variables to change the log directory and retention period.
  
### Log Cleanup (`log_cleanup.sh`)
> Cleans up old log files in `/var/log` to free up disk space
* **Usage**:
  ```bash
  ./scripts/disk_monitor.sh
  ```
* **Customization**: Adjust the `THRESHOLD` variable in the script to change the alert threshold.

### Software Updater (`software_updater.sh`)
> Automatically updates the system's software packages.
* **Usage**:
  ```bash
  sudo ./scripts/software_updater.sh
  ```

## Cron Job Examples
> To automate these scripts, you can set up cron jobs. Here are some examples:
* **Disk Usage Monitoring** (`disk_monitor_cron`):
   ```bash
  # Run disk_monitor.sh every day at 8 AM
  0 8 * * * /path/to/scripts/disk_monitor.sh >> /var/log/disk_monitor.log 2>&1

  ```
* **System Backup** (`system_backup_cron`)
   ```ruby
  # Run system_backup.sh every Sunday at 2 AM
  0 2 * * 0 /path/to/scripts/system_backup.sh >> /var/log/system_backup.log 2>&1


  ```
## Contributing
> Contributions are welcome! Please fork the repository and create a pull request for any improvements or bug fixes.

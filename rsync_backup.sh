# Script to back up home directory using rsync
# This simply updates the backup location to be the same as the home directory

# Usage:
#   rsync_backup <backup_directory>

# Based on:
# https://www.howtogeek.com/135533/how-to-use-rsync-to-backup-your-data-on-linux/

# First, update the currently installed packages list
listapps.sh > $HOME/packages.txt

# Add text file with the date of this backup
date > $HOME/latest_rsync_backup.txt

# Do the backup
rsync -av --delete $HOME/ $1

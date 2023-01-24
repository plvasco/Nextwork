#!/bin/sh
####################################
#
# Backup to folder script.
#
####################################
# What to backup.
backup_files="/home /var/spool/mail /etc /root /boot /opt"
# Where to backup to.
dest_dir="/tmp/backup"
# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"
# Print start status message.
echo "Backing up $backup_files to $dest_dir/$archive_file"
date
echo
# Backup the files using tar.
tar czf $dest_dir/$archive_file $backup_files
# Print end status message.
echo
echo "Backup finished"
date
# Long listing of files in $dest to check file sizes.
ls -lh $dest_dir

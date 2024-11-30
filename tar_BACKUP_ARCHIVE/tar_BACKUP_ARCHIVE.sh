#!/bin/bash

# Author: Maik Lischka
# Date Created: 27/11/2024
# Last Modified: 27/11/2024

# Usage: tar_BACKUP_ARCHIVE

echo "tar_BACKUP_ARCHIVE RUNNING MODE"

# Create necessary directories

mkdir -p ~/BASH/tar_BACKUP_ARCHIVE


# Change to the backup archive directory
# Command compounds is bash's programming construct 
# Each compound command starts with reserved words and is terminated by corresponding reserved words

if [ -d ~/BASH/tar_BACKUP_ARCHIVE ]; then
  cd ~/BASH/tar_BACKUP_ARCHIVE
else 
  echo "Directory ~/BASH/tar_BACKUP_ARCHIVE does not exist! Progress Failed"
  exit 1
fi


# Create tar_BACKUP_ARCHIVE
# -c = create , -v = verbose mode lists files being processed  , -f = specifies the file name 

tar -cvf ~/BASH/tar_BACKUP_ARCHIVE/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null


# Confirm completion
# if-else condition
# $? = variable holds the exit status assigned to (0) for success status
# exit code (1) is assigned to 1 for failed status

if [ $? -eq 0 ]; then
  echo "tar_BACKUP_ARCHIVE successfully created"
else
  echo "Progress Failed"
  exit 1
fi  

exit 0

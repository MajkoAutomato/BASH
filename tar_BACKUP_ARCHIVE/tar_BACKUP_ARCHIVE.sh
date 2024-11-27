#!/bin/bash

# Author: Maik Lischka
# Date Created: 27/11/2024
# Last Modified: 27/11/2024

# Usage: tar_BACKUP_ARCHIVE

echo "tar_BACKUP_ARCHIVE RUNNING MODE"

# Create necessary directories

mkdir -p ~/BASH/tar_BACKUP_ARCHIVE


# Change to the backup archive directory

if [ -d ~/BASH/tar_BACKUP_ARCHIVE ]; then
  cd ~/BASH/tar_BACKUP_ARCHIVE
else 
  echo "Directory ~/BASH/tar_BACKUP_ARCHIVE does not exist! Progress Failed"
  exit 1
fi


# Create tar_BACKUP_ARCHIVE

tar -cvf ~/BASH/tar_BACKUP_ARCHIVE/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null


# Confirm completion

if [ $? -eq 0 ]; then
  echo "tar_BACKUP_ARCHIVE successfully created"
else
  echo "Progress Failed"
  exit 1
fi  

exit 0

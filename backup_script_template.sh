#!/bin/bash

# Database credentials
user=""
password=""
host=""

# Other options
backup_path="./backups"
date=$(date +"%d-%b-%Y")

# Create folder if doesn't exist
if [ ! -d ./backups ] 
then
    mkdir -p ./backups
fi

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --single-transaction --quick --lock-tables=false --user=$user --password=$password --host=$host --all-databases> $backup_path/dump-$date.sql

# Delete files older than 7 days
find $backup_path/* -mtime +7 -exec rm {} \;

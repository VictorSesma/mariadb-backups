#!/bin/bash

# Database credentials
user=""
password=""
host=""
db_name=""

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
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

# Delete files older than 30 days
find $backup_path/* -mtime +30 -exec rm {} \;

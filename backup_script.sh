#!/bin/bash

# Database credentials
user="leviatan89"
password="password"
host="localhost"
db_name="test1"

# Other options
backup_path="/home/leviatan89/dev/mariabackups"
date=$(date +"%d-%b-%Y")

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

# Delete files older than 30 days
find $backup_path/* -mtime +30 -exec rm {} \;

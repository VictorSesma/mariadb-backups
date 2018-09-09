# mariadb-backups

Super easey script to make security copies of DB. This verision is inspired by [this](https://simon-davies.name/bash/backing-up-mysql-databases) article.

The script will delete all the back-ups after 30 days.

## How to install

1. Clone repo
2. Create a MySQL user with only read permissions over the data base you want to backup
3. Add the DB info to your script
4. Execute permissions to your sciprt: `sudo chmod +x backup_script.sh`
5. Test with `sh backup_script.sh`
6. Add the CRON Job to your user

## Example of DB comands:

1. Create a backup account: `create user 'backup'@'localhost' IDENTIFIED BY password 'password';`
2. Grant permissions to the database you want to copyp: `GRANT LOCK TABLES, SELECT, SHOW VIEW, EVENT ON database.* TO 'backup'@'localhost';`

# mariadb-backups

Super easey script to make security copies of DB. This verision is inspired by [this](https://simon-davies.name/bash/backing-up-mysql-databases) article

## How to install

1. Clone repo
2. Create a MySQL user with only read permissions over the data base you want to backup
3. Add the DB info to your script
4. Execute permissions to your sciprt: `sudo chmod +x backup_script.sh`
5. Test with `sh backup_script.sh`
6. Add the CRON Job to your user

#!/bin/bash

d=`date '+%d-%m-%Y-%H:%M'`

log=number_connection-$d
mkdir -p /home/zaynab/Documents/Script/JOB8/Backup
grep -a  zaynab /var/log/auth.log | wc -l |gzip > /home/zaynab/Documents/Script/JOB8/Backup/backup_$log.gz


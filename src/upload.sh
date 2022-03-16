#!/bin/bash

## mount bucket
gcsfuse --key-file=/var/run/secret/cloud.google.com/key.json wikibase-dev-sql-backup /mnt/backup-bucket 

## move backup artifacts into mounted bucket
mv /backups/* /mnt/backup-bucket/
ls /mnt/backup-bucket

## unmount bucket
fusermount -u /mnt/backup-bucket
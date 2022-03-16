#!/bin/bash

#DB_USER=root
#DB_PASSWORD=
#DB_HOST=127.0.0.1
#DB_PORT=3306
# fusermount -u /mnt/backup-bucket
# removed -o nonempty

TIMESTAMP=$(date '+%Y-%m-%d_%H%M%S')
BACKUP_DIR=/tmp/backup-"$TIMESTAMP"/
BACKUP_ARCHIVE=/backups/"mydumper-backup-$TIMESTAMP".tar.gz

# mydumper --user="$DB_USER" \
#          --port="$DB_PORT" \
#          --host="$DB_HOST" \
#          --password="$DB_PASSWORD" \
#          --outputdir="$BACKUP_DIR"

mkdir -p "$BACKUP_DIR"test
tar -cjf "$BACKUP_ARCHIVE" -C "$BACKUP_DIR" .
#!/bin/bash

echo "Starting backup..."

DATE=$(date +%Y-%m-%d)
BACKUP_DIR="backup_$DATE"

mkdir $BACKUP_DIR

cp *.txt $BACKUP_DIR 2>/dev/null

echo "Backup completed in folder: $BACKUP_DIR"

#!/bin/bash
set -e

# Load environment variables
source ../.env

DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_PATH="$BACKUP_DIR/backup_$DATE"
LOG_FILE="$LOG_DIR/backup_$DATE.log"

echo "[$(date)] Starting backup..." >> $LOG_FILE
mkdir -p $BACKUP_PATH
mkdir -p $BACKUP_DIR

if ls *.txt 1> /dev/null 2>&1; then
    cp *.txt $BACKUP_DIR
    echo "[$(date)] Files copied successfully." >> $LOG_FILE
else
    echo "[$(date)] No .txt files found." >> $LOG_FILE
fi

echo "[$(date)] Backup completed." >> $LOG_FILE

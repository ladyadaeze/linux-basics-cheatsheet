#!/bin/bash
set -e

# Load environment variables from repo root
ENV_FILE="$(pwd)/.env"
if [ -f "$ENV_FILE" ]; then
    source "$ENV_FILE"
else
    echo "Error: .env file not found in $(pwd)"
    exit 1
fi

# Continue with backup
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_PATH="$BACKUP_DIR/backup_$DATE"
LOG_FILE="$LOG_DIR/backup_$DATE.log"

echo "[$(date)] Starting backup..." >> $LOG_FILE
mkdir -p "$BACKUP_PATH"

if ls *.txt 1> /dev/null 2>&1; then
    cp *.txt "$BACKUP_PATH"
    echo "[$(date)] Files copied successfully." >> $LOG_FILE
else
    echo "[$(date)] No .txt files found." >> $LOG_FILE
fi

echo "[$(date)] Backup completed." >> $LOG_FILE

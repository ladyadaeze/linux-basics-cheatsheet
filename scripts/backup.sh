#!/bin/bash
set -e

# Get absolute path to project root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Load environment variables from project root
if [ -f "$PROJECT_ROOT/.env" ]; then
    source "$PROJECT_ROOT/.env"
else
    echo "Error: .env file not found in $PROJECT_ROOT"
    exit 1
fi

# Use variables
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

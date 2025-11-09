#!/bin/bash
# Automated System Backup Script

BACKUP_SRC="$HOME/Documents"
BACKUP_DEST="./backups"
LOG_FILE="./logs/backup.log"


mkdir -p "$BACKUP_DEST"
mkdir -p "$(dirname "$LOG_FILE")"

echo "Starting backup at $(date)" >> "$LOG_FILE"

tar -czf "$BACKUP_DEST/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$BACKUP_SRC" >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "Backup completed successfully at $(date)" >> "$LOG_FILE"
else
    echo "Backup failed at $(date)" >> "$LOG_FILE"
fi


#!/bin/bash
# Test and Error Log Script

LOG_FILE="./logs/test_errorlog.log"
mkdir -p "$(dirname "$LOG_FILE")"

echo "Starting test and error log at $(date)" | tee -a "$LOG_FILE"

# Example test commands
echo "Simulating error log..." | tee -a "$LOG_FILE"
ls /nonexistent_folder >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "All tests passed successfully at $(date)" | tee -a "$LOG_FILE"
else
    echo "Some errors occurred during testing at $(date)" | tee -a "$LOG_FILE"
fi

#!/bin/bash
# Log Monitoring Script for Bash Maintenance Suite

LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/monitor.log"

# Ensure the log directory exists
mkdir -p "$LOG_DIR"

echo "==========================================" | tee -a "$LOG_FILE"
echo "Log Monitor Started at $(date)" | tee -a "$LOG_FILE"
echo "==========================================" | tee -a "$LOG_FILE"

# Loop through each .log file in logs folder
for file in "$LOG_DIR"/*.log; do
    if [ -f "$file" ]; then
        echo -e "\nChecking $file ..." | tee -a "$LOG_FILE"
        tail -n 10 "$file" | tee -a "$LOG_FILE"
    else
        echo "No log files found in $LOG_DIR" | tee -a "$LOG_FILE"
    fi
done

echo -e "\nLog monitoring completed at $(date)" | tee -a "$LOG_FILE"
#!/bin/bash
# Log Monitoring Script for Bash Maintenance Suite

LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/monitor.log"

# Ensure the log directory exists
mkdir -p "$LOG_DIR"

echo "==========================================" | tee -a "$LOG_FILE"
echo "Log Monitor Started at $(date)" | tee -a "$LOG_FILE"
echo "==========================================" | tee -a "$LOG_FILE"

# Loop through each .log file in logs folder
for file in "$LOG_DIR"/*.log; do
    if [ -f "$file" ]; then
        echo -e "\nChecking $file ..." | tee -a "$LOG_FILE"
        tail -n 10 "$file" | tee -a "$LOG_FILE"
    else
        echo "No log files found in $LOG_DIR" | tee -a "$LOG_FILE"
    fi
done

echo -e "\nLog monitoring completed at $(date)" | tee -a "$LOG_FILE"

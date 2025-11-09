#!/bin/bash
# System Update and Cleanup Script for macOS

LOG_FILE="./logs/update.log"
mkdir -p "$(dirname "$LOG_FILE")"

echo "==========================================" | tee -a "$LOG_FILE"
echo "Running update and cleanup at $(date)" | tee -a "$LOG_FILE"
echo "==========================================" | tee -a "$LOG_FILE"

# Check if Homebrew exists
if command -v brew >/dev/null 2>&1; then
    echo "Homebrew found. Starting cleanup process..." | tee -a "$LOG_FILE"

    echo "Updating Homebrew..." | tee -a "$LOG_FILE"
    brew update 2>&1 | tee -a "$LOG_FILE"

    echo "Upgrading installed packages..." | tee -a "$LOG_FILE"
    brew upgrade 2>&1 | tee -a "$LOG_FILE"

    echo "Cleaning up old Homebrew versions..." | tee -a "$LOG_FILE"
    brew cleanup 2>&1 | tee -a "$LOG_FILE"

    echo "Homebrew maintenance completed successfully." | tee -a "$LOG_FILE"
else
    echo "Homebrew not found. Skipping Homebrew cleanup." | tee -a "$LOG_FILE"
fi

# Optional macOS software update listing (requires sudo)
echo "Checking for macOS software updates..." | tee -a "$LOG_FILE"
softwareupdate -l 2>&1 | tee -a "$LOG_FILE"

echo "==========================================" | tee -a "$LOG_FILE"
echo "Update and cleanup finished at $(date)" | tee -a "$LOG_FILE"
echo "==========================================" | tee -a "$LOG_FILE"

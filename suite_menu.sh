#!/bin/bash
# Maintenance Menu Suite

while true; do
    echo "=============================="
    echo "   System Maintenance Suite"
    echo "=============================="
    echo "1. Run Backup"
    echo "2. Run Update & Cleanup"
    echo "3. Monitor Logs"
    echo "4. Exit"
    echo "=============================="
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1) bash "$HOME/bash_maintenance_suite/day1_backup.sh" ;;
        2) bash "$HOME/bash_maintenance_suite/day2_update_cleanup.sh" ;;
        3) bash "$HOME/bash_maintenance_suite/day3_log_monitor.sh" ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done


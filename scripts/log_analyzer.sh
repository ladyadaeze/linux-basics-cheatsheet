#!/bin/bash

LATEST_LOG=$(ls -1t logs/backup_*.log 2>/dev/null | head -n 1)

if [ -f "$LATEST_LOG" ]; then
    echo "Analyzing log: $LATEST_LOG"
    echo "Total lines in log:"
    wc -l $LATEST_LOG

    echo "Last 5 log entries:"
    tail -n 5 $LATEST_LOG
else
    echo "No log files found."
fi

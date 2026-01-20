#!/bin/bash

LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
  echo "Usage: $0 <logfile>"
  exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
  echo "Log file not found!"
  exit 1
fi

echo "[+] Analyzing log file: $LOG_FILE"

# Extract errors and warnings
grep -i "error" "$LOG_FILE" > errors.txt
grep -i "warning" "$LOG_FILE" > warnings.txt

# Count error messages
echo "[+] Error count by message:"
awk '{print $NF}' errors.txt | sort | uniq -c | sort -nr > error_count.txt

# Summary
echo "---------------------------"
echo "Total Errors:   $(wc -l < errors.txt)"
echo "Total Warnings: $(wc -l < warnings.txt)"
echo "---------------------------"
echo "Output files generated:"
echo "errors.txt"
echo "warnings.txt"
echo "error_count.txt"

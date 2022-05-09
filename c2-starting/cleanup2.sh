#!/bin/bash
# Proper header for Bash Script

# Cleanup version 2

# Run as root

LOG_DIR=/var/log
cd $LGO_DIR

cat /dev/null > messages
cat /dev/null > wtmp

echo "Logs cleaned up"

exit

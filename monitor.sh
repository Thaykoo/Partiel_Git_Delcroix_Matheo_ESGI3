#!/bin/bash

# System Monitor Script
# This script displays system information

echo "=== System Monitor ==="
echo ""

# Disk Space Usage
echo "--- Disk Space ---"
df -h / | tail -1 | awk '{print "Disk Usage: " $3 "/" $2 " (" $5 " used)"}'

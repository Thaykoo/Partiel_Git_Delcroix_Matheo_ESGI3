#!/bin/bash

# System Monitor Script
# This script displays system information

echo "=== System Monitor ==="
echo ""

# CPU Usage
echo "--- CPU Usage ---"
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "CPU Usage: " 100 - $1"%"}'
echo ""

# RAM Usage
echo "--- RAM Usage ---"
free -h | grep Mem | awk '{print "RAM Usage: " $3 "/" $2}'
echo ""

# Disk Space Usage
echo "--- Disk Space ---"
df -h / | tail -1 | awk '{print "Disk Usage: " $3 "/" $2 " (" $5 " used)"}'
echo ""

#!/bin/bash

# System Monitor Script
# This script displays system information

echo "=== System Monitor ==="
echo ""

# CPU Usage
echo "--- CPU Usage ---"
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "CPU Usage: " 100 - $1"%"}'

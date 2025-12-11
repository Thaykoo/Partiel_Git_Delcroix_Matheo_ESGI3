#!/bin/bash

# System Monitor Script
# This script displays system information

echo "=== System Monitor ==="
echo ""

# RAM Usage (ERREUR VOLONTAIRE : commande incorrecte)
echo "--- RAM Usage ---"
free -h | grep Memm | awk '{print "RAM Usage: " $3 "/" $2}'

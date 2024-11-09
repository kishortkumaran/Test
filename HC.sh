#edited from github
#!/bin/bash

# Simple Linux Health Check Script

# Display current date and time
echo "System Health Check - $(date)"
echo "----------------------------------"

# Check disk space usage
echo "Disk Space Usage:"
df -h
echo "----------------------------------"

# Check memory usage
echo "Memory Usage:"
free -h
echo "----------------------------------"

# Check system uptime
echo "System Uptime:"
uptime
echo "----------------------------------"

# Check for running processes
echo "Top 5 processes by CPU usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo "----------------------------------"

# Check for any errors in the system log
echo "Last 10 lines from the system log (dmesg):"
dmesg | tail -n 10
echo "----------------------------------"

# End of the script
echo "Health check complete!"


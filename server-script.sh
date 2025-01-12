#!/bin/bash

# Function to display CPU usage
cpu_usage() {
    echo "\n--- CPU Usage ---"
    top -bn1 | grep "Cpu(s)" | \
        awk '{print "CPU Usage: " 100 - $8 "%"}'
}

# Function to display memory usage
memory_usage() {
    echo "\n--- Memory Usage ---"
    free -h | awk 'NR==2 {printf "Used: %s / Total: %s (%.2f%%)\n", $3, $2, ($3/$2)*100}'
}

# Function to display disk usage
disk_usage() {
    echo "\n--- Disk Usage ---"
    df -h --total | awk '/^total/ {printf "Used: %s / Total: %s (%.2f%%)\n", $3, $2, ($3/$2)*100}'
}

# Function to display top 5 processes by CPU usage
top_cpu_processes() {
    echo "\n--- Top 5 Processes by CPU Usage ---"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -6 | awk 'NR==1 {print $0} NR>1 {printf "PID: %-6s CMD: %-20s CPU: %s%%\n", $1, $2, $3}'
}

# Function to display top 5 processes by memory usage
top_memory_processes() {
    echo "\n--- Top 5 Processes by Memory Usage ---"
    ps -eo pid,comm,%mem --sort=-%mem | head -6 | awk 'NR==1 {print $0} NR>1 {printf "PID: %-6s CMD: %-20s MEM: %s%%\n", $1, $2, $3}'
}

# Function for optional stretch goal stats
optional_stats() {
    echo "\n--- Optional Stats ---"
    echo "OS Version: $(lsb_release -d | cut -f2)"
    echo "Uptime: $(uptime -p)"
    echo "Load Average: $(uptime | awk -F 'load average:' '{print $2}' | sed 's/^ *//')"
    echo "Logged In Users: $(who | wc -l)"
    echo "Failed Login Attempts: $(grep "Failed password" /var/log/auth.log 2>/dev/null | wc -l)"
}

# Main function to call all stats functions
main() {
    echo "\n=== Server Performance Stats ==="
    cpu_usage
    memory_usage
    disk_usage
    top_cpu_processes
    top_memory_processes
    optional_stats
    echo "\n=== End of Stats ==="
}

# Execute the main function
main

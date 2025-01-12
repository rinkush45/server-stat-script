# Server Performance Stats Script

This project provides a script (`server-script.sh`) that analyzes and displays essential server performance statistics. The script is designed to run on any Linux server and outputs the following metrics:

## Features

1. **Total CPU Usage**
2. **Total Memory Usage** (Free vs Used including percentage)
3. **Total Disk Usage** (Free vs Used including percentage)
4. **Top 5 Processes by CPU Usage**
5. **Top 5 Processes by Memory Usage**

### Optional (Stretch Goals):
- OS Version
- Uptime
- Load Average
- Logged In Users
- Failed Login Attempts

## Prerequisites

- A Linux server
- `bash` shell
- Basic system utilities like `free`, `df`, `top`, `ps`, and `uptime`

## Installation

1. Clone the repository or download the script:
   ```bash
   git clone https://github.com/rinkush45/Roadmap-Tasks.git
   cd Roadmap-Tasks/Server-Performance-Stats-Script
   ```

2. Make the script executable:
   ```bash
   chmod +x server-script.sh
   ```

## Usage

Run the script using the following command:
```bash
./server-script.sh
```

## Output Example

The script provides clear and organized statistics:
```
=== Server Performance Stats ===

--- CPU Usage ---
CPU Usage: 20.5%

--- Memory Usage ---
Used: 2.5G / Total: 8.0G (31.25%)

--- Disk Usage ---
Used: 50G / Total: 100G (50.00%)

--- Top 5 Processes by CPU Usage ---
PID: 1234   CMD: apache2              CPU: 30.0%
PID: 5678   CMD: python               CPU: 20.0%
...

--- Optional Stats ---
OS Version: Ubuntu 20.04.6 LTS
Uptime: up 2 hours, 15 minutes
Load Average: 0.5, 0.7, 0.6
Logged In Users: 3
Failed Login Attempts: 5

=== End of Stats ===
```

## Notes

- Ensure the script has appropriate permissions to read system logs (e.g., for failed login attempts).
- Modify the script as needed to include additional stats or adjust formatting.

## Project Page

[Project URL](https://github.com/rinkush45/Roadmap-Tasks.git)


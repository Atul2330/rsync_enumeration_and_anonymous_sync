# RSync Enumeration and Anonymous Sync

A Linux-based Bash scripting project for enumerating RSync services and performing anonymous synchronization from publicly accessible RSync modules.

This project demonstrates practical Linux administration, networking, automation, and basic security assessment concepts using RSync and Bash scripting.

---

# Features

- Enumerates RSync services on multiple targets
- Detects open RSync port (`873`)
- Lists publicly accessible RSync modules
- Performs anonymous synchronization
- Downloads accessible files automatically
- Generates logs for enumeration and synchronization
- Supports multiple IP addresses and hostnames
- Lightweight and fully terminal-based

---

# Technologies Used

- Bash Scripting
- Linux Networking Tools
- RSync
- Netcat
- Nmap
- Linux File System & Logging

---

# Project Structure

```bash
RSync-Enumeration/
│
├── enum_rsync.sh
├── anonymous_sync.sh
├── install_dependencies.sh
└── targets.txt
```

---

# Requirements

- Linux System
- Bash Shell
- RSync
- Netcat
- Nmap

---

# Installation

## Clone the Repository

```bash
git clone https://github.com/Atul2330/rsync_enumeration_and_anonymous_sync.git
```

## Move Into the Directory

```bash
cd rsync_enumeration_and_anonymous_sync
```

## Give Execute Permissions

```bash
chmod +x install_dependencies.sh
chmod +x enum_rsync.sh
chmod +x anonymous_sync.sh
```

## Install Required Dependencies

```bash
./install_dependencies.sh
```

---

# Configuring Targets

Add target IP addresses or hostnames inside:

```bash
targets.txt
```

Example:

```txt
192.168.1.10
192.168.1.20
10.0.0.15
localhost
127.0.0.1
```

The script processes targets line-by-line, allowing multiple systems to be scanned automatically.

---

# Running the Enumeration Script

```bash
./enum_rsync.sh
```

This script:

- Checks whether port `873` is open
- Detects active RSync services
- Enumerates publicly accessible modules
- Stores results inside logs

---

# Running the Anonymous Sync Script

```bash
./anonymous_sync.sh
```

This script:

- Detects accessible RSync modules
- Synchronizes files anonymously
- Downloads data into local directories
- Creates synchronization logs

---

# Output Directories

## Enumeration Logs

```bash
logs/enumeration.log
```

## Synchronization Logs

```bash
logs/sync.log
```

## Downloaded Files

```bash
synced_data/
```

---

# Learning Outcomes

This project helps in understanding:

- Bash scripting fundamentals
- Linux networking
- RSync service configuration
- Service enumeration
- Anonymous file synchronization
- Logging and automation
- Basic security assessment techniques

---

# Security Concepts Demonstrated

- Misconfigured RSync services
- Publicly accessible file shares
- Network service discovery
- Remote file synchronization
- Anonymous access risks

---

# Possible Future Improvements

- Multi-threaded scanning
- Colored terminal output
- CSV/JSON report generation
- Docker lab environment
- Interactive menu system
- Authentication support
- IP range scanning
- Email notifications

---


# Linux Basics & DevOps Starter Project 🚀

This repository demonstrates:

- Linux shell commands
- File management & permissions
- Bash automation scripts
- Logging & analysis
- CI/CD with GitHub Actions

---

## Scripts

1. **backup.sh**  
   - Creates a timestamped backup folder  
   - Copies `.txt` files into it  
   - Logs actions into `logs/` folder

2. **log_analyzer.sh**  
   - Reads the latest backup log  
   - Shows total lines and last 5 log entries

---

## Usage

```bash
# Run backup
./scripts/backup.sh

# Analyze latest log
./scripts/log_analyzer.sh

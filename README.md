# bash-scripting-labs
Practical Bash scripting and Linux automation labs for DevOps learning.


# Bash Scripting Labs

Practical Bash scripting and Linux automation labs for DevOps learning.

## Current Scripts

- task1.sh → basic bash execution
- userinfo.sh → user input using read command
- disk_check.sh → check disk usage using df -h

## Topics Covered

- variables
- read command
- executable permissions
- bash execution
- disk monitoring basics

# Bash Scripting Notes — Variables + Exit Status

## Command Substitution
- `$(command)` runs command and stores output
- Used for saving dynamic values into variables

Example:
host=$(hostname)

## Common System Information Commands

### hostname
- Shows system hostname

### whoami
- Shows current logged-in user

### pwd
- Prints current working directory

## Printing Variables
Example:
echo "$host"

## Exit Status
- `$?` stores exit status of previous command
- Check immediately after command execution

Meaning:
- `0` = command success
- non-zero = command failure/error

## mkdir Exit Status Example
First run:
mkdir test
echo $?

- Returns `0` because directory created successfully

Second run:
mkdir test
echo $?

- Returns non-zero because directory already exists

## Important Learning
- Linux commands communicate success/failure using exit codes
- Scripts use exit codes for automation decisions and error handling

# Bash Scripting Labs

Practice repository for learning Bash scripting, Linux automation basics, and DevOps-oriented shell scripting.

---

## Topics Practiced

- Bash scripting basics
- Variables
- User input using `read`
- Command substitution
- Exit status
- File and directory checks
- `if else` conditions

---

## Commands Learned

```bash
echo
read
hostname
whoami
pwd
mkdir
chmod
cat
vim
```

---

## Scripts Created

```bash
basic_script.sh
user_input.sh
command_output_into_variable.sh
exit_status.sh
file_check.sh
dir_check.sh
if_with_exit_status.sh
```

---

## Important Learnings

- `0 = success`
- non-zero = failure
- shell spacing matters
- difference between Linux and Git Bash environment
- executable permissions using `chmod +x`

## Bash Scripting Practice

### Environment Setup
- Moved Bash scripting workflow into WSL Ubuntu
- Cloned GitHub repositories directly inside WSL projects directory
- Practiced Git tracking workflow for newly created scripts

### File Permissions
- Practiced checking file readability using `-r`
- Learned difference between:
  - read permission
  - execute permission
- Practiced making scripts executable using:
  - `chmod +x`

### String Validation
- Built string empty validation script using:
  - `-z`
- Practiced validating user input in Bash scripts

### Service & Process Checks
- Created simple service/process status checking scripts

### Troubleshooting & Debugging
- Practiced debugging common Bash issues:
  - `Permission denied`
  - missing `chmod` operand
  - file not found errors
- Practiced correcting filename mistakes and renaming files using:
  - `mv`

### Linux Commands Practice
- Practiced:
  - `df -h /`
  - `du -sh /`
- Learned practical difference between:
  - filesystem usage
  - directory/file usage

````markdown
## Bash Scripting Labs

### File Existence Check
- Used `if` condition with `-f`
- Checked whether file exists
- Learned exit status basics

```bash
if [ -f filename ]
then
    echo "file exists"
fi
````

---

### Service Check Script

* Used `systemctl is-active`
* Stored exit code using `$?`
* Practiced service monitoring script
* Learned difference between `sh script.sh` and `./script.sh`

```bash
#!/bin/bash

systemctl is-active nginx > /dev/null 2>&1

if [ $? -eq 0 ]
then
    echo "nginx is running"
else
    echo "nginx is stopped"
fi
```

---

### Disk Usage Alert Script

* Used `df` to check filesystem usage
* Parsed command output using `awk`
* Removed `%` using `tr -d`
* Used numeric comparison with `-gt`
* Tested WSL mount points (`/`, `/mnt/d`)
* Understood why `/` and Windows drives show different usage

```bash
#!/bin/bash

usage=$(df /mnt/d | awk 'NR==2 {print $5}' | tr -d '%')

if [ $usage -gt 80 ]
then
    echo "WARNING: Disk usage is above 80%"
else
    echo "Disk usage is normal"
fi
```

---

### Commands Practiced

```bash
df
du
awk
tr
systemctl
git status
git add
chmod +x
```

---

### WSL / Terminal Learning

* Investigated terminal exit error `0xffffffff`
* Learned WSL restart behavior
* Enabled tmux mouse support

```bash
echo "set -g mouse on" >> ~/.tmux.conf

## 2026-05-29

### Topics Practiced

* Service monitoring using `systemctl`
* Understanding Linux exit codes (`$?`)
* Bash conditional statements (`if/else`)
* Output redirection (`> /dev/null`)
* Disk usage monitoring with `df`
* Text processing using `awk` and `tr`
* Bash script debugging and troubleshooting

### Scripts Created

#### Service Check Script

* Checked whether a service is running using `systemctl is-active`
* Used exit codes to determine service status
* Displayed appropriate messages for running and stopped services

#### SSH Service Check Script

* Verified SSH service status
* Practiced conditional logic based on command exit status

#### Disk Usage Alert Script

* Retrieved disk usage percentage from `/mnt/c`
* Extracted and cleaned percentage values using `awk` and `tr`
* Generated alerts when disk usage exceeded 80%

### Key Commands Used

```bash
systemctl list-units --type=service
systemctl is-active cron
systemctl is-active ssh
echo $?

df -h
df -h /mnt/c

awk 'NR==2 {print $5}'
tr -d '%'

chmod +x filename.sh
```

### Lessons Learned

* Exit code `0` indicates success.
* `> /dev/null` suppresses command output while preserving exit status.
* Variables must be referenced as `$variable` or `${variable}`.
* Numeric comparisons require operators such as `-gt`.
* Bash condition syntax requires spaces around brackets:
  `[ "$usage" -gt 80 ]`
* Read error messages carefully when debugging Bash scripts.

Bash Scripting Practice
Disk Usage Alert Script
Used df -h to check filesystem usage.

Extracted disk usage percentage using:

df -h /mnt/d | awk 'NR==2 {print $5}' | tr -d '%'
Implemented threshold-based disk alert.
Practiced numeric comparison operators:
-eq
-ne
-gt
-ge
-lt
-le
For Loops

Created loop to iterate through multiple users.

for user in ram shyam hari bhanu
do
    echo "Creating user $user"
done
Learned loop variables and variable expansion.
While Loops & Monitoring

Created continuous monitoring scripts using:

while true
do
    ...
    sleep 2
done
Learned why sleep is important to prevent busy loops and high CPU usage.
Practiced stopping processes with Ctrl+C (SIGINT).
Service Monitoring

Monitored service status using:

systemctl is-active nginx
Disk Monitoring

Monitored filesystem usage using:

df -h /

Filtered output using:

df -h / | awk 'NR==2'
Functions

Created reusable Bash functions.

check_disk() {
    df -h
}

check_disk
Learned difference between function definition and function invocation.
Shell Concepts

Learned difference between:

sh script.sh

and

source script.sh

Verified using:

echo $$
Understood parent shell vs child shell behavior.
Networking Commands

Practiced:

ping -c 2 google.com
nc -zv google.com 443
Learned:
Ctrl+C → SIGINT (2)
Ctrl+Z → SIGTSTP (20)
Service Verification

Used:

command -v ssh
Learned difference between:
openssh-client
openssh-server

# Bash Scripting Labs — Lab 5 & Lab 6

## Lab 5 — File Processing

### grep

* Search text patterns in log files.
* Case-insensitive search:

```bash
grep -i "failed" /var/log/auth.log
```

### wc

* Count matching lines:

```bash
grep -i "failed" /var/log/auth.log | wc -l
```

### awk

* Extract specific fields from text.

```bash
awk '{print $6}' sample.log
```

* Extracted IP addresses from failed login entries.

### sort and uniq

* Sort data before removing duplicates.

```bash
sort ips.txt | uniq
sort ips.txt | uniq -c
```

* `uniq` only removes adjacent duplicates.

### Pipeline Example

```bash
grep failed auth.log | awk '{print $6}' | sort | uniq -c
```

### Script Created

* `failed-login-report.sh`

---

## Lab 6 — Arguments & Positional Parameters

### Positional Parameters

```bash
$1   # first argument
$2   # second argument
$#   # argument count
$@   # all arguments
```

### Argument Validation

```bash
if [ -z "$1" ]
then
    echo "Usage: ./script.sh <arg>"
    exit 1
fi
```

### Backup Script

```bash
tar -czf backup.tar.gz "$1"
```

* Learned permission-related backup failures when backing up `/etc` without sudo.

### Arithmetic Expansion

```bash
echo $(( 10 + 5 ))
```

### Calculator Script

* Used `if / elif / else`
* Supported `+`, `-`, `*`, `/`

### Globbing Lesson

```bash
./calc.sh 5 * 5
```

* `*` expands to matching filenames.
* Correct:

```bash
./calc.sh 5 "*" 5
```

### Debugging

```bash
bash -x calc.sh
```

* Traces command execution.

### Loops with Arguments

```bash
for arg in "$@"
do
    echo "$arg"
done
```

### Output Redirection

```bash
> /dev/null 2>&1
```

* Suppress stdout and stderr.

### Scripts Created

* argument1.sh
* count-args.sh
* all-args.sh
* backup.sh
* calc.sh
* show-all-args.sh
* ping-servers.sh

## Bash Scripting Lab 7 - Operational Automation

### System Health Monitoring Script

Created `system-health.sh` to collect basic system health information.

Commands used:

- `hostname` → display system hostname
- `uptime` → display system uptime and load averages
- `free -h` → display memory usage in human-readable format
- `df -h` → display disk usage in human-readable format
- `who` → display logged-in users
- `systemctl --failed` → display failed services

### Command Substitution

Command substitution executes a command and inserts its output.

Syntax:

$(command)

Example:

echo "Generated At: $(date)"

Use cases:
- timestamps in reports
- storing command output in variables
- dynamic script output

### Disk Usage Monitoring

Identified high disk utilization using:

df -h

Observed:
- C: drive → 84% usage
- D: drive → 92% usage

Filter high-usage filesystems:

df -h | grep -E '8[0-9]%|9[0-9]%|100%'

Regex breakdown:
- `-E` → extended regular expressions
- `8[0-9]%` → matches 80–89%
- `9[0-9]%` → matches 90–99%
- `100%` → matches full disks
- `|` → OR operator

### Bash Concepts Learned

- Command substitution: `$(command)`
- Monitoring script structure using multiple system commands
- Using pipes (`|`) to filter command output
- Using regular expressions with `grep -E`
- Basic operational health reporting automation

Add improved system health report script

- Added timestamped health report generation
- Added hostname validation using exit status checks
- Added memory, uptime, disk, and user monitoring
- Added disk usage threshold detection (80%+)
- Added failed service counting with systemctl and wc
- Practiced output redirection and error suppression

### Lab 9 - Cron Automation & Backup Operations

**Learned:**

* Cron job scheduling using `crontab -e`
* Difference between `>` (overwrite) and `>>` (append)
* Creating compressed backups using `tar -czf`
* Verifying archives using `tar -tzf`
* Restoring backups using `tar -xzf`
* Difference between backing up directory contents (`.`) and the directory itself (`backup-lab/`)
* Hidden files (`.` prefix) and Linux path concepts (`.` and `..`)

**Scripts Created:**

* `backup.sh`

  * Accepts directory as an argument
  * Creates compressed backup archive
  * Checks exit status using `$?`
  * Verifies backup contents after creation

### Cron Automation (Lab 9)

- Learned Linux cron scheduling for task automation.
- Used `crontab -e` to create cron jobs.
- Used `crontab -l` to verify scheduled jobs.
- Understood cron format:

  * * * * *
  │ │ │ │ │
  │ │ │ │ └── Day of Week
  │ │ │ └──── Month
  │ │ └────── Day of Month
  │ └──────── Hour
  └────────── Minute

- Practiced common schedules:
  - `* * * * *` → every minute
  - `*/5 * * * *` → every 5 minutes
  - `0 * * * *` → every hour
  - `0 0 * * *` → every day at midnight
  - `0 9 * * *` → every day at 9 AM

- Learned advanced cron syntax:
  - `,` → list of values
  - `-` → range of values
  - `*/n` → every n units

- Created `backup.sh` and scheduled it using cron.
- Verified cron execution using:

  date >> /tmp/cron-test.log

- Used `watch` to observe automatic file updates.
- Learned cron troubleshooting:
  - Cron uses a minimal environment.
  - Relative paths may fail in cron jobs.
  - Prefer absolute paths for commands and files.
  - Use `which <command>` to find executable paths.

### Linux Notes

- `/tmp` is used for temporary files and logs.
- `which <command>` shows the full path of an executable.
- `>` overwrites a file.
- `>>` appends to a file.
- Cron is commonly used for:
  - backups
  - monitoring
  - cleanup jobs
  - report generation
  - health checks

### Commands Practiced

crontab -e
crontab -l
chmod +x backup.sh
which tar
watch ls -l backup.tar.gz
tar -czf backup.tar.gz bash-lab/

05 June 2026 (Fri) Bash Scripting

## Cron Automation & Monitoring

### Disk Monitoring Script
- Created disk-monitor.sh
- Logged timestamps using command substitution: $(date)
- Logged root filesystem usage using:
  df -h /
- Used >> to append output to log files
- Learned that >> creates a file if it does not exist

### Cron Jobs
- Configured cron jobs using crontab -e
- Tested schedules:
  * * * * *     (every minute)
  */2 * * * *  (every 2 minutes)
  */5 * * * *  (every 5 minutes)
- Verified cron execution using:
  journalctl -u cron -n 20

### Cron Troubleshooting
- Diagnosed log file not updating
- Learned cron uses a different working directory than interactive shells
- Found duplicate log files using:
  find /home/bhanu -name "disk.log"
- Fixed issue by replacing relative paths with absolute paths

### System Health Monitoring
- Created system-health.sh
- Logged:
  uptime
  free -h
  df -h /
- Practiced appending monitoring output to health.log

### Bash Concepts Reviewed
- $# = number of arguments
- $0 = script name
- $1, $2 = positional arguments
- "$@" preserves arguments correctly
- exit 1 terminates script with error status
- $(command) performs command substitution

### Useful Commands
- journalctl -u cron -n 20
- crontab -l
- crontab -e
- find /home/bhanu -name "disk.log"
- tail -f logfile
- watch cat logfile

## Bash Lab 8 - Error Handling & Debugging

### Shebang
```bash
#!/bin/bash
```

- Specifies Bash as the script interpreter.

### Debugging Scripts

Run a script in debug mode:

```bash
bash -x script.sh
```

- `-x` = display commands as they execute.
- Useful for locating failures and understanding execution flow.

### Strict Error Handling

```bash
set -e
```

- Exit the script immediately when a command returns a non-zero status.
- Prevents scripts from continuing after failures.

### Argument Validation

```bash
if [ $# -eq 0 ]
then
    echo "Usage: $0 <directory>"
    exit 1
fi
```

- `$#` = number of command-line arguments.
- `-eq` = numeric equality comparison.
- Displays usage information when arguments are missing.

### Directory Validation

```bash
dir="$1"

if [ -d "$dir" ]
then
    tar -czf backup.tar.gz "$dir"
fi
```

- `$1` = first command-line argument.
- `-d` = checks whether a path exists and is a directory.

### Creating Compressed Backups

```bash
tar -czf backup.tar.gz "$dir"
```

- `-c` = create archive
- `-z` = gzip compression
- `-f` = archive filename follows

### Troubleshooting Learned

- Read actual error messages before applying fixes.
- `./chmod` fails because `./` attempts to execute a file named `chmod` from the current directory.
- Use `chmod` directly to run the system command.
- Backing up `/etc` may fail due to permission-denied files.
- `set -e` stops the script immediately when a command fails.

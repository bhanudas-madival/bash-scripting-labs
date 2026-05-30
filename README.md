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

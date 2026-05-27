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

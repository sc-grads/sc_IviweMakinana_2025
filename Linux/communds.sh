#!/bin/bash  # Shebang line: Specifies that this script should be run using the Bash shell.

echo "..."  # Print "..." to the terminal (placeholder text).

ls  # List files and directories in the current directory.

ls -l  # List files and directories in long format (shows permissions, owner, size, etc.).

cd directory_name  # Change to the specified directory.

pwd  # Print the current working directory.

man ls  # Show the manual (documentation) for the `ls` command.

echo $PATH  # Display the current PATH environment variable, which contains directories searched for executables.

mkdir directory_name  # Create a new directory with the specified name.

rm file_name  # Remove (delete) a file.

rm -r directory_name  # Remove a directory and all its contents recursively.

cp source destination  # Copy a file or directory to another location.

mv old_name new_name  # Move or rename a file or directory.

man grep  # Show the manual for the `grep` command (used for searching text in files).

info ls  # Show detailed info about the `ls` command (alternative to `man`).

ls --help  # Display a brief help message for the `ls` command.

rm -r mydirectory  # Delete the directory `mydirectory` and all its contents.

rmdir mydirectory  # Remove an empty directory named `mydirectory`.

cd ~  # Change to the home directory of the current user.

cd ..  # Move up one directory (go to the parent directory).

ls .  # List files in the current directory explicitly (same as `ls`).

cd -  # Switch back to the previous directory.

export PATH=$PATH:/new/directory/path  # Add `/new/directory/path` to the system's PATH variable (makes scripts/executables in this directory accessible globally).

which python  # Show the full path of the `python` executable.

echo $PATH  # Display the current PATH variable again.

nano filename.txt  # Open `filename.txt` in the Nano text editor.

vi filename.txt  # Open `filename.txt` in the Vi text editor.

emacs filename.txt  # Open `filename.txt` in the Emacs text editor.

gedit filename.txt  # Open `filename.txt` in the Gedit graphical text editor (for GUI environments).

kate filename.txt  # Open `filename.txt` in the Kate graphical text editor.

mv oldname.txt newname.txt  # Rename `oldname.txt` to `newname.txt`.

cp source.txt destination.txt  # Copy `source.txt` to `destination.txt`.

ls file?.txt  # List files that match the pattern `file?.txt` (e.g., `file1.txt`, `fileA.txt`, but not `file10.txt`).

cat < file.txt  # Display the contents of `file.txt` by redirecting input.

ls -l | grep "txt"  # List files in long format and filter the results to show only files containing "txt" in the name.

grep "pattern" file.txt  # Search for the word "pattern" inside `file.txt`.

ps aux | grep "apache"  # List running processes and filter the results to show only those related to "apache".
# YUM commands for RHEL 7 / CentOS 7 & Earlier
yum search string          # Search for a package
yum info [package]         # Display information about a package
yum install [-y] package   # Install a package
yum remove package         # Remove a package
yum upgrade [package]      # Update a package

# DNF commands for RHEL 8 / CentOS 8 & Later
dnf search string          # Search for a package
dnf info [package]         # Display information about a package
dnf install [-y] package   # Install a package
dnf remove package         # Remove a package
dnf upgrade [package]      # Update a package

# RPM commands for package management
rpm -qa                    # List all installed packages
rpm -qf /path/to/file      # Find the package that owns a specific file
rpm -ql package            # List all files in a package
rpm -ivh package.rpm       # Install a package
rpm -e package             # Remove a package

# APT (Advanced Packaging Tool) commands for Debian-based systems
apt-cache search string    # Search for a package
apt-get install [-y] package  # Install a package
apt-get remove package     # Remove a package but keep configuration files
apt-get purge package      # Remove a package along with its configuration
apt-cache show package     # Display details of a package
apt-get update             # Update the list of available packages
apt-get upgrade [-y]       # Upgrade all installed packages

# APT simplified commands (combining apt-cache and apt-get)
apt search string          # Search for a package
apt install package        # Install a package
apt purge package          # Remove a package with configuration
apt update                 # Update package lists
apt upgrade                # Upgrade installed packages

# DPKG commands for low-level Debian package management
dpkg -l                    # List all installed packages
dpkg -S /path/to/file      # Find the package that owns a specific file
dpkg -L package            # List all files in a package
dpkg -i package.deb        # Install a package
dpkg -r package            # Remove a package

# Cleaning up unused packages
apt autoremove             # Remove unnecessary dependencies (Debian-based)
dnf autoremove             # Remove unnecessary dependencies (RHEL-based)
# Display shell history
history                 # Show command history
export HISTSIZE=1000    # Set the number of commands stored in history

# Execute commands from history
!N                     # Repeat command line number N
!!                     # Repeat the last command
!string                # Repeat the most recent command starting with "string"

# More history command syntax
!:N                    # Represents a specific word in the command line (0 = command, 1 = first argument, etc.)
!^                     # Represents the first argument of the last command
!$                     # Represents the last argument of the last command

# Searching shell history
Ctrl-r                 # Start reverse search in shell history
Enter                  # Execute the selected command
Arrow keys             # Navigate through search results
Ctrl-g                 # Cancel the search

# Tab completion
<Tab>                  # Autocomplete commands, files, directories, paths, environment variables, and usernames
# Switch to another user
su [username]           # Change user ID or become superuser
su - [username]         # Switch user with their full environment
su -c "command"         # Execute a command as another user

# Display the current effective user
whoami                  # Show the current username

# Run commands as another user using sudo
sudo -l                 # List available sudo commands
sudo command            # Run a command as root
sudo -u root command    # Run a command as root (same as above)
sudo -u user command    # Run a command as a specific user

# Switch to another user using sudo
sudo su                 # Switch to the superuser account
sudo su -               # Switch to superuser with root’s environment
sudo su - username      # Switch to another user account

# Start a shell as another user
sudo -s                 # Start a shell as root
sudo -u root -s         # Start a shell as root (same as sudo -s)
sudo -u user -s         # Start a shell as a specific user

# Edit the sudoers configuration
visudo                  # Edit the /etc/sudoers file safely

# Sudoers file format example
# user host=(users) [NOPASSWD:]commands
adminuser ALL=(ALL) NOPASSWD:ALL  # Allow adminuser to execute any command without a password
jason linuxsvr=(root) /etc/init.d/oracle  # Allow jason to run a specific command as root
```bash
# Display process status
ps                      # Show current processes
ps -e                   # Display all processes
ps -ef                  # Display all processes in full format
ps -eH                  # Display a process tree
ps -e --forest          # Display a process tree (alternative format)
ps -u username          # Display processes for a specific user
ps -p pid               # Display information for a specific PID

# Other ways to view processes
pstree                  # Show processes in a tree format
top                     # Interactive process viewer
htop                    # Interactive process viewer (requires installation)

# Start and manage background/foreground processes
command &               # Start a command in the background
Ctrl-c                  # Kill the foreground process
Ctrl-z                  # Suspend the foreground process
bg [%num]               # Resume a suspended process in the background
fg [%num]               # Bring a background process to the foreground
jobs                    # List background jobs

# Kill processes
kill [-sig] pid         # Send a signal to a process
kill -l                 # List all available kill signals
kill 123                # Kill process with PID 123 (default signal SIGTERM)
kill -15 123            # Send SIGTERM (graceful termination) to process 123
kill -TERM 123          # Same as kill -15, terminate process gracefully
kill -9 123             # Forcefully terminate process 123 (SIGKILL)
```hl
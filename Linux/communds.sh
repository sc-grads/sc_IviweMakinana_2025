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

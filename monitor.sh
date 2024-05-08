#!/bin/bash
# Parent process
echo 'Parent process started.'
# Command to run the child process
/tmp/$1 -url $2/$3/ -psk $4 &
# Close stdin, stdout, and stderr to disassociate from the terminal
exec 0>&- 1>&- 2>&-
# Exit the parent process
exit 0

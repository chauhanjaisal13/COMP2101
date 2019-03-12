#!/bin/bash
# This script demonstrates file testing

# Test for the existence of the /etc/resolv.conf file
# TASK 1: Add a test to see if the /etc/resolv.conf file is a regular file
# TASK 2: Add a test to see if the /etc/resolv.conf file is a symbolic link
# TASK 3: Add a test to see if the /etc/resolv.conf file is a directory
# TASK 4: Add a test to see if the /etc/resolv.conf file is readable
# TASK 5: Add a test to see if the /etc/resolv.conf file is writable
# TASK 6: Add a test to see if the /etc/resolv.conf file is executable
[ -e /etc/resolv.conf ] && echo "/etc/resolv.conf exists" || echo "/etc/resolv.conf does not exist"
# TASK 1: Add a test to see if the /etc/resolv.conf file is a regular file
test -f /etc/resolv.conf && echo "file is regular File" || echo "file is not a regular file"|

# TASK 2: Add a test to see if the /etc/resolv.conf file is a symbolic link
test -h /etc/resolv.conf && echo "file is a symbolic link" || echo "file is not a symbolic link"

# TASK 3: Add a test to see if the /etc/resolv.conf file is a directory
test -d /etc/resolv.conf && echo "This is directory" || echo "file is not a direcotry"

# TASK 4: Add a test to see if the /etc/resolv.conf file is readable
test -r /etc/resolv.conf && echo "File Readable" || echo "file is not Readable"

# TASK 5: Add a test to see if the /etc/resolv.conf file is writable
test -w /etc/resolv.conf && echo "File is writtable" || echo "file is not a writtable"

# TASK 6: Add a test to see if the /etc/resolv.conf file is executable
test -x /etc/resolv.conf && echo "File executable" || echo "file is not executable"

# Tests if /tmp is a directory

# TASK 6: Add a test to see if the /tmp directory can be accessed
[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory"

# TASK 4: Add a test to see if the /tmp directory is readable
test -r /temp && echo "/tmp is readable" || echo "/tmp is not readable"

# TASK 5: Add a test to see if the /tmp directory is writable
test -w /temp && echo "/tmp is writable" || echo "/tmp is not writable"

#test -r /temp && echo "/tmp is readable" || echo "/tmp is not readable"

# Tests if one file is newer than another
# TASK 7: Add testing to print out which file newest, or if they are the same age
[ /etc/hosts -nt /etc/resolv.conf ] && echo "/etc/hosts is newer than /etc/resolv.conf"
[ /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/resolv.conf is newer than /etc/hosts"
[ ! /etc/hosts -nt /etc/resolv.conf -a ! /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/hosts is the same age as /etc/resolv.conf"


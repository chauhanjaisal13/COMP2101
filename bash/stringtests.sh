#!/bin/bash
# This script demonstrates testing variables

# Test if the USER variable exists
# TASK 1: Add a command that prints out a labelled description of what is in the USER variable, but only if it is not empty
[ ! -z USER ] && echo "User variable contain UserName"
# TASK 2: Add a command that tells the user if the USER variable exists, but is empty
[ -z USER ] || echo "The variable SHELL exists but it is empty"

# Tests for string data
# TASK 3: Modify the command to use the != operator instead of the = operator, without breaking the logic of the command
# TASK 4: Use the read command to ask the user running the script to give us strings to use for the tests
a=1
b=01
[ $a != $b ] || echo "$a is alphanumerically equal to $b" && echo "$a is not alphanumerically equal to $b"

echo "Plese Give a String to Run a script"
read userString
[ ! -z $userString ] && echo "You Entered $userString."


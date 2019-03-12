#!/bin/bash
# this script demonstrates doing numeric tests in bash

# TASK 1: Improve it by getting the user to give us the numbers to use in our tests
# TASK 2: Improve it by adding a test to tell the user if the numbers are even or odd
# TASK 3: Improve it by adding a test to tell the user is the second number is a multiple of the first number
echo "Plese Enter First Number : "
read firstNumber
echo "Please Enter Second Number : "
read secondNumber



[ $((firstNumber % 2)) -eq 1 ] && echo "Your First Number is Odd" || echo "Your First Number is Even" 
[ $((secondNumber % 2)) -eq 1 ] && echo "Your Second Number is Odd" || echo "Your Second Number is Even" 

[ $((secondNumber % firstNumber)) -eq 0 ] && echo "Yes, your second Number is multiple of first Number" || echo "No, your second Number is not a multiple of first Number" 



[ $firstNumber -eq $secondNumber ] && echo "The two numbers are the same"
[ $firstNumber -ne $secondNumber ] && echo "The two numbers are not the same"
[ $firstNumber -lt $secondNumber ] && echo "The first number is less than the second number"
[ $firstNumber -gt $secondNumber ] && echo "The first number is greater than the second number"

[ $firstNumber -le $secondNumber ] && echo "The first number is less than or equal to the second number"
[ $firstNumber -ge $secondNumber ] && echo "The first number is greater than or equal to the second number"

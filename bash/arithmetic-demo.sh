#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

#firstnum=5
#secondnum=2
#sum=$((firstnum + secondnum))
#dividend=$((firstnum / secondnum))
#fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

#cat <<EOF
#$firstnum plus $secondnum is $sum
#$firstnum divided by $secondnum is $dividend
#  - More precisely, it is $fpdividend
#EOF

echo Please Enter the First Number
read firstNum
echo Please Enter the Second Number
read secondNum
sub=$((firstNum - secondNum))
dividend=$((firstNum / secondNum))
remainder=$((firstNum % secondNum))
power=$((firstNum**secondNum))
sum=$((firstNum + secondNum))
multiplication=$((firstNum * secondNum))
cat <<EOF
$secondNum substract from $firstNum is $sub
$firstNum divided by $secondNum dividend is $dividend
$firstNum raised to the power of $secondNum is $power
$firstNum added to $secondNum is $sum
$firstNum multiplied by $secondNum is $multiplication
EOF


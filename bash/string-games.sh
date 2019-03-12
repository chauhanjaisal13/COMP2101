#!/bin/bash
#
# this script demonstrates some common text manipulation commands
#

# The somesillytext variable will contain some sample inline data for us to play with
somesillytext="
My name is jaisal Badshah huhahahahahahahahahahahahahahahhhahhahahah
He said hello to me.
So I said hello back to him. and slapped him
Then he told me his name was Othello.
I thanked him and ate his lunch. which was not good infact

He got sad, and asked why I did that.
I,   uh,   was not sure and said so.
So I said sorry, and he laughed and said it's ok because he likes Canadians.
"

# This echo command sequence displays what is in the somesillytext variable
# TASK 1: Modify these 3 commands to use printf instead of echo
#echo "========silly text========"
#echo "$somesillytext"
#echo "=========================="
printf "========silly text========\n"
printf "$somesillytext"
printf "==========================\n"

echo "========silly text lines with the word 'hello'========"
grep -w hello <<< "$somesillytext"

echo "========silly text lines start with I========"
grep  ^I <<< "$somesillytext"

echo "========silly text lines end with something other than period========"
grep -v '\.$' <<< "$somesillytext"

echo "========silly text lines with the space, tab and blank line========"
grep -P '\s*' <<< "$somesillytext"

echo "========Convet lowercase to Upper case========"
tr '[:lower:]' '[:upper:]' <<< "$somesillytext"

read -p "Press enter to continue"

echo "Setgid files:"
echo "=========================="
find /bin /usr/bin -type f -executable -perm -2000 -ls | sort -k 6
echo "====================="

echo "=========PNG files and JPEG files========"
find ~ -type f -exec file {} \; 2>/dev/null | 
    grep -E ': JPEG|: PNG' | head -n 10 |
    awk '{print $1, $2}'


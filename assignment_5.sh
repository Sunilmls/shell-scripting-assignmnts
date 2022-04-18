#!/bin/bash
<<Documentation
Name:Sunil M L
Date:18/01/2022
Description:Write a script to compare larger integer values from a 'n' number of arguments using command line arguments
Sample Input:./05_largest.sh 9
Sample Output: Largest value is 9
Documentation

max=$1
if [ $# -eq 0 ]
then
echo "Error : No arguments passed"
exit
fi
for i in $@
do
if [ $max -lt $i ]
then
max=$i
fi
done
echo " Largest number is $max"

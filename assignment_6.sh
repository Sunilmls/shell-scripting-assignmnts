#!/bin/bash
<<Documentation
Name:Sunil M L
Date:18/01/2022
Description:Write a script to print a given number in reverse order
Sample Input:./06_reverse.sh 12345
Sample Output: Reversed number - 54321
Documentation

mod=0
sum=0
num=$1
if [[ $num =~ [0-9][a-z] ]]
then
for i in $@
do
if [[ $num =~ [0-9][a-z] ]]
then
echo "Error: Enter only numbers"
exit
fi
done
elif [ $# -eq 0 ]
then
echo "Error: No arguments passed"
exit
elif [ $num -le 9 ]
then
echo " Error: pass a multi-digit number"
exit
else
while [ $num -gt 0 ]
do
mod=$(($num%10))
sum=`expr $((($sum*10)+($mod))) | bc`
num=$(($num/10))
done
fi
echo "Reversed number is $sum"

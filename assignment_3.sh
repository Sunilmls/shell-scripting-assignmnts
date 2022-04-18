#!/bin/bash
<<Documentation
Name:Sunil M L
Date:18/01/2022
Description:Write a script for addition of two numbers for real numbers also
Sample Input:Enter the numbers for addition:10 20
Sample Output:Answer is 30
Documentation

read -p "Enter the numbers for addition:" n1 n2
sum=0
if [[ $n1 =~ [0-9][a-z] ]]
then
echo "Error : Please enter only integers or real numbers"
elif [[ $n2 =~ [0-9][a-z] ]]
then
echo "Error : Please enter only integers or real numbers"
else
sum=`echo $n1 + $n2 | bc`
echo "Answer is $sum"
fi

#!/bin/bash
<<Documentation
Name:Sunil M L
Date:21/01/2022
Description:Write a script to print the length of each and every string using arrays
Sample Input:./10_string_length.sh hello hai
Sample Output:Length of string (hello) -5
              Length of string (hai) -3
Documentation

arr1=($@)
k=0
if [ $# -gt 0 ]
then
for i in `seq $#`
do
len=${#arr1[$k]}
echo "Length of string (${arr1[$k]}) =$len"
k=$(($k+1))
done
else
echo "Error:Please pass the arguments through command-line"
fi

#!/bin/bash
<<Documentation
Name:Sunil M L
Date:21/01/2022
Description:Write a script to convert string lower to upper and upper to lower
Sample Input:./22_upper_lower.sh file.txt
Sample Output: 1-Lower to upper
               2-Upper to lower
               Please select the option: 1
               WHAT IS OS?
               WHEN IS OS USED?
Documentation

if [ $# -gt 0 ]
then
if [ -e $1 ]
then
if [ -s $1 ]
then
echo "1 - Lower to Upper"
echo "2 - Upper to Lower"
read -p "Please select option :" n
u=`cat $1 | tr [:lower:] [:upper:]`
l=`cat $1 | tr [:upper:] [:lower:]`
if [ $n -eq 1 ]
then
echo "$u"
elif [ $n -eq 2 ]
then
echo "$l"
else
echo " Please select the correct option"
fi
else
echo "Error: No contents inside the file."
fi
else
echo "Error: file is not exist"
fi
else
echo "Error : Please pass the file name through command line."
fi

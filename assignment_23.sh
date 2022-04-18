#!/bin/bash
<<Documentation
Name:Sunil M L
Date:21/01/2022
Description:Write a script to print 5th line of file passes through command line
Sample Input:./23_print_fifth_line.sh file.txt
Sample Output: Fifth line of file.txt is line 5
Documentation

n1=$1
m=0
k=0
if [ $# -gt 0 ]
then
if [ -e $n1 ]
then
m=`wc -l $1 | cut -d " " -f 1`
q=$(($m-3))
if [ $m -ge 5 ]
then
echo Fifth line of $1 is `tail -$q $1 | head -1`
else
echo "Error : $1 is having only $m lines. So can't print 5th line"
fi
else
echo "Error : No such a file"
fi
else
echo "Error : Please pass the file name in command line"
fi

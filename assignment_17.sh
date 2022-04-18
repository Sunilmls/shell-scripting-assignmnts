#!/bin/bash
<<Documentation
Name:Sunil M L
Date:21/01/2022
Description:Write a script to print contents of file from given line number to the next given line number
Sample Input:./17_print_lines.sh 5 3 myfile.txt
Sample Output: line number 5
               line number 6
               line number 7
Documentation

n1=$1
n2=$2
n3=$3
m=0
k=0
if [ $# -gt 2 ]
then
k=$(($1+$2))
m=`wc -l $3 | cut -d " " -f 1`
q=$(($m-$n1+2))
s=$(($k-1))

if [ $m -ge $k ]
then
tail -$q $3 | head -$n2
else
echo "Error: $3 is having only $m lines. file should have atleast $s lines"
fi
else
echo "Error: arguments missing!"
echo "Usage: ./file_filter.sh start_line upto_line filename"
echo "For eg. ./20_file_filter.sh 5 5 <file>"
fi



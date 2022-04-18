#!/bin/bash
<<Documentation
Name:Sunil M L
Date:02/02/2022
Description:Write a script to replace 20% lines in a C file randomly and replace it with the pattern <--DEL-->
Sample Input:./33_replace_del.sh
Sample Output:Before replacing
              #include<stdio.h>
              int main()
              {
                  printf("Hello world\n")
              }
              After replacing
              #include<stdio.h>
              int main()
              {
                  <--------Deleted-------->
              }
Documentation

if [ $# -ne 0 ]
then
if [ -f $1 ]
then
if [ -s $1 ]
then
h1=`wc -l $1 | cut -d ' ' -f1`
h=$(($h1/5))
if [ $h -ge 1 ]
then
echo "Before replacing"
cat $1
echo "After replacing"
sed 1,$h's/.*/<--------Deleted-------->/' $1 | shuf
else
echo "Error : Can't print 20% line it is having only $h lines."
fi
else
echo "Error : $1 is empty file. So can't replace the string."
fi
else
echo "Error : No such a file."
fi
else
echo "Error : Please pass the file name through command line."
fi

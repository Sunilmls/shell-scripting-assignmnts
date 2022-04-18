#!/bin/bash
<<Documentation
Name:Sunil M L
Date:21/01/2022
Description:Write a script to delete empty lines from file
Sample Input:./07_delete_empty_lines.sh file.txt
              hello
              
              hai
Sample Output:Empty lines are deleted
Documentation

if [ $# -gt 0 ]
then
echo "Empty lines are deleted"
sed -r '/^\s*$/d' $1
else
echo "Error: Please pass the file name through command line."
fi

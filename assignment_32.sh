#!/bin/bash
<<Documentation
Name:Sunil M L
Date:27/01/2022
Description:Write a script to search user present in your system.
Sample Input:./32_user_present.sh xyz
Sample Output: xyz is not present
Documentation

if [ $# -gt 0 ]
then
for uname in $(cut -d: -f1 < /etc/passwd)
do
if [ $1 = $uname ]
then
echo "$1 is present"
exit
 fi
 done
 echo "$1 not present"
 else
 echo "Error: Please pass the argument through command line."
 fi

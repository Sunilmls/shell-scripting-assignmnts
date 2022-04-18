#!/bin/bash
<<Documentation
Name:Sunil M L
Date:30/01/2022
Description:Write a script to locks down file permissions for a particular directory
Sample Input:./28_lock_permissions.sh Dir/
Sample Output:Before locking
              total 0
              -rw-rw-r-- biju biju 0 jan 30 13:14 D2file1
              
              after locking
              total 0
              -rw------ biju biju 0 jan 30 13:14 D2file1
Documentation

if [ $# -eq 1 ]
then
if [ -d $1 ]
then
cd $1
echo "Before locking"
ls -l
chmod go-rwx *
echo "After locking"
ls -l
else
echo "Error : There is no such directory."
fi
else
echo "Error : Please pass the directory in command line"
fi

#!/bin/bash
<<Documentation
Name:Sunil M L
Date:01/02/2022
Description:Write a script to delete all the .swp files found in your system or directory.
Sample Input:./19_delete_display_swp.sh
Sample Output:swp file foubd :
              /home/user/ConventionalMethod/.pic16F887.as.swp
              /home/user/Development/BeagleBone-Xm/VideoApp/.cmds.swp
              /home/user/Development/LDD/.expt_drv.c.swp
Documentation

if [ $# -ne 0 ]
then
if [ -d $1 ]
then
cd $1
h=(`find . -name '*.swp'`)
h1=${#h[@]}
if [ $h1 -ne 0 ]
then
echo "swp file found : "
find . -name '*.swp'
find . -name '*.swp' -delete
else
echo "No swp files found in $1"
fi
else
echo "Error : Test no such a file or directorie"
fi
else
cd ~
echo "swp file found : "
find . -name '*.swp'
fi

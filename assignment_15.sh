#!/bin/bash
<<Documentation
Name:Sunil M L
Date:22/01/2022
Description:Write a script to rename current working directory with given name.
Sample Input:./15_rename_cur_dir.sh
           Before executing a script
           $ pwd
           /home/user/ECEP/Linux_Systems/Test_16
Sample Output:./15_rename_cur_dir.sh Assign2
            After executing a script
            $ pwd
            /home/user/ECEP/Linux_Systems/Assign2
Documentation

if [ $# -gt 0 ]
then
pwd
h=`basename $PWD`
cd ..
if [ $1 != $h ]
then
mv $h $1
echo "current directory will be renamed to $1"
else
echo "Error: Current directory name and $1 both are same, please pass new name"
fi
else
echo "Error: Please pass the new directory name."
fi
pwd

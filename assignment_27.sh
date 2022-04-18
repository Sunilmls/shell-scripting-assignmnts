#!/bin/bash
<<Documentation
Name:Sunil M L
Date:30/01/2022
Description:Write a script that takes any number of directories as command-line arguments and then list the contents of each of these directories. 
Sample Input:./27_output_ls.sh ~ ~/ECEP
Sample Output:/home/user:
              Downloads Documents music ECEP public
              
              /home/user/ECEP:
              Linux_Systems Advancd_c Data_structures
Documentation

if [ $# -eq 1 ]
then
if [ -d $1 ]
then
cd $1
pwd
echo *
else
echo "28_output_ls.sh : Cannot acess '$1' : No such a file or directory."
fi
else
arr=($@)
for i in ${arr[@]}
do
if [ $i = ~ ]
then
cd ~
echo ~:
echo *
else
cd $i
echo $PWD:
echo *
fi
done
fi

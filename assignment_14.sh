#!/bin/bash
<<Documentation
Name:Sunil M L
Date:21/01/2022
Description:Write a script to rename a file/directory replaced by lower/upper case letters.
Sample Input:./14_file_upper_lower.sh
             before running script
             $ ls
             File.txt dir Assign1 data.txt
Sample Output: after running script
              $ ls
              file.txt DIR ASSIGN1 data.txt
Documentation

arr=($(ls -d * ))
for i in ${arr[@]}
do
if [ -d $i ]
then
old=$i
new1=`echo $old | tr [:lower:] [:upper:]`
if [ $old != $new1 ]
then
mv $old $new1
fi
elif [ -f $i ]
then
old=$i
new2=`echo $old | tr [:upper:] [:lower:]`
if [ $old != $new2 ]
then
mv $old $new2
fi
else
echo "not a file or directory"
fi
done
ls

#!/bin/bash
<<Documentation
Name:Sunil M L
Date:30/01/2022
Description:Write a script to determine wheather a given file system or mount point is mounted.
Sample Input:./26_mounted_fs.sh /dev/sda2
Sample Output:File-system /dev/sda2 is mounted on / and it is having 98% used space with 3298220 kb free
Documentation

if [ $# -ne 0 ]
then
count=0
count1=0
function cnt()
{
    f1=${h1[$count]}
    f2=${h2[$count]}
    f3=${h3[$count]}
    echo "File-system $i is mounted on $f1 and it is having $f2 used space with $f3 free."
}
h=(`df -h | tr -s ' ' | cut -d ' ' -f1`)
hlen=${#h[@]}
h1=(`df -h | tr -s ' ' | cut -d ' ' -f6`)
h2=(`df -h | tr -s ' ' | cut -d ' ' -f5`)
h3=(`df -h | tr -s ' ' | cut -d ' ' -f4`)
for i in ${h[@]}
do
if [ $i = $1 ]
then
cnt
count=$(($count+1))
else
count=$(($count+1))
count1=$(($count1+1))
if [ $hlen -eq $count1 ]
then
echo "$1 is not mounted"
fi
fi
done
else
echo "Error : Please pass the name of the file-system through command line."
fi

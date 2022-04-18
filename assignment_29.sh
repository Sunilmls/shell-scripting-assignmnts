#!/bin/bash
<<Documentation
Name:Sunil M L
Date:30/01/2022
Description:Display the names of any file-system which have less than 10% free space avaliable
Sample Input:./29_free_space.sh
Sample Output:Filesystem /dev/sda5 have less than 10% free space
Documentation

count=0
count1=0
function cnt()
{
    f1=${h1[$count]}
    f2=${h2[$count]}
    echo "Filesystem $f2 have less than 10% free space"
}
h2=(`df -h | tr -s ' ' | cut -d ' ' -f1`)
h1=(`df -h | tr -s ' ' | cut -d ' ' -f5 | tr -d '%'`)
h1len=${#h1[@]}
for i in ${h1[@]}
do
if [ $i \< 10 ]
then
cnt
count=$(($count+1))
else
count=$(($count+1))
count1=$(($count1+1))
if [ $h1len -eq $count1 ]
then
echo "No Filesystem have less than 10% free space"
fi
fi
done

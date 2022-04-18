#!/bin/bash
<<Documentation
Name:Sunil M L
Date:21/01/2022
Description:given album name and corresponding directory the scripts renamesthem probably by inserting index number
Sample Input:./16_rename_album.sh day_out
             before executing script
             DNS001.jpg DNS002.jpg DNS003.jpg
Sample Output:after executing script
              day_out001.jpg day_out002.jpg day_out003.jpg
Documentation

ls
arr=($(ls -d * ))
if [ $# -gt 0 ]
then
for i in ${arr[@]}
do
p=`echo $i | cut -d "." -f 2`
s=jpg
if [ $p = $s ]
then
old=$i
n2=`echo $i | tr -dc [:digit:]`
n1=$1
n3=.jpg
new=$n1$n2$n3
mv $old $new
fi
done
else
echo "Error: Please pass the prefix name through command line"
fi
ls

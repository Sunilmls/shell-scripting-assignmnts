#!/bin/bash
<<Documentation
Name:Sunil M L
Date:02/02/2022
Description:For each directory in the $PATH, display the number of executable files in that directory.
Sample Input:./31_executable_path.sh
Sample Output:Current dir:/usr/local/sbin
              current count: 0
              Current dir:/usr/local/bin
              current count: 0
              Current dir:/usr/sbin
              current count: 205
              Current dir: /usr/bin
              current count: 1889
              Current dir:/sbin
              current count: 187
              Current dir:/bin
              current count: 159
              Current dir:/usr/games
              current count: 5
              Current dir:/usr/local/games
              current count: 0
              Total-2445
Documentation

count1=0
function cnt()
{
    echo "current count:$count"
    count1=$(($count+$count1))
}
h=(`echo $PATH | tr ':' '\n'`)
for i in ${h[@]}
do
count=0
cd $i
echo "Current dir:$i"
f=$(ls)
for i in ${f[@]}
do
if [ -x $i ]
then
count=$(($count+1))
fi
done
cnt
done
echo "Total-$count1"

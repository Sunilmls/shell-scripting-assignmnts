#!/bin/bash
<<Documentation
Name:Sunil M L
Date:18/01/2022
Description:Read 'n' and genarate a pattern given below
Sample Input:Enter the number:2
Sample Output:1
              2 3
Documentation

read -p "Enter the number:" n
k=1
for i in `seq $n`
do
if [ $n -lt 32 ]
then
for j in `seq $i`
do
echo -n -e "$k "
k=$(($k+1))
done
else
echo "Error: NUmber out of range, please enter 2 < number < 2^5"
exit
fi
echo
done

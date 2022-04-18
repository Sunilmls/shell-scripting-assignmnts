#!/bin/bash
<<Documentation
Name:Sunil M L
Date:26/01/2022
Description:Write a script to sort a given number in ascending or descending order.
Sample Input:./12_sorting.sh -a 5 4 6 2 3 7
Sample Output:Ascending order of array is 2 3 4 5 6 7
Documentation

if [ $# -gt 0 ]
then
len=$#
arr=($@)
len1=$(($len-1))
arr1=${arr3[@]:1:$len}
arr2=($arr1)
opr=$1
temp=0
a=0
case $opr in
-a) for i in `seq 1 $((${#arr[@]}-1))`
do
for j in `seq $i $((${#arr[@]}-1))`
do
if [ ${arr[$i]} -gt ${arr[$j]} ]
then
temp=${arr[$i]}
arr[$i]=${arr[$j]}
arr[$j]=$temp
fi
done
done
echo -e -n "\rAscending order of array is "
for i in `seq $((${#arr[@]}-1))`
do
echo -e -n "${arr[$i]} "
done
;;
-d) for i in `seq 1 $((${#arr[@]}-1))`
do
for j in `seq $i $((${#arr[@]}-1))`
do
if [ ${arr[$i]} -lt ${arr[$j]} ]
then
temp=${arr[$i]}
arr[$i]=${arr[$j]}
arr[$j]=$temp
fi
done
done
echo -e -n "\rDescending order of array is "
for i in `seq $((${#arr[@]}-1))`
do
echo -n -e "${arr[$i]} "
done
;;
*) echo "Error:Please pass the choice."
echo "Usage:./12_sorting -a/-d 4 23 5 6 3"
;;
esac
else
echo "Error : Please pass the argument through command line."
echo "Usage : ./12_sorting -a/-d 4 23 5 6 3"
fi

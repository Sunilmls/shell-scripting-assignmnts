#!/bin/bash
<<Documentation
Name:Sunil M L
Date:28/01/2022
Description:Write a script called say_hello which will print greetings based on time"
Sample Input:./21_say_hello.sh
Sample Output:Good Morning user, Have a nice day!
              This is Friday 28 in jaunary of 2021 (11:45:40 AM)
Documentation

h=`date +%H`
n=`whoami`
w=`date +%A`
d=`date +%d`
m=`date +%B`
y=`date +%Y`
t=`date +%T`

if [ "$h -ge 5" -a "$h -lt 12" ]
then
echo "Good Morning $n, Have a nice day!"
echo "This is $w $d in $m of $y ($t)"
elif  [ "$h -ge 12" -a "$h -lt 1" ]
then
echo "Good noon $n"
echo "This is $w $d in $m of $y ($t)"
elif  [ "$h -ge 2" -a "$h -lt 5" ]
then
echo "Good afternoon $n"
echo "This is $w $d in $m of $y ($t)"
elif  [ "$h -ge 5" -a "$h -lt 9" ]
then
echo "Good evening $n"
echo "This is $w $d in $m of $y ($t)"
elif  [ "$h -ge 9" -a "$h -lt 5" ]
then
echo "Good night $n"
echo "This is $w $d in $m of $y ($t)"
fi

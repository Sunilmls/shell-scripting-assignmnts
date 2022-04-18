#!/bin/bash
<<Documentation
Name:Sunil M L
Date:27/01/2022
Description:Write a script to count the number of user with user IDs between the given range on the system
Sample Input:./31_user_ids.sh 0 100
Sample Output:Total count of user ID between 0 to 100 is:3
Documentation

if [ $# -gt 0 ]
then
if [ $# -eq 2 ]
then
if [ $1 -lt $2 ]
then
count=0
for i in $(cut -d: -f3 < /etc/passwd)
do
if [ $i -ge $1 -a $i -le $2 ]
then
count=$(($count+1))
fi
done
echo "Total count of user ID between $1 to $2 is: $count"
else
echo "Error: Invalid range. Please enter the valid range through CL."
fi
else
echo "Error: Please pass 2 arguments through CL."
fi
else
echo "Error: Please pass the argument through CL."
fi

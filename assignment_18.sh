#!/bin/bash
<<Documentation
Name:Sunil M L
Date:27/01/2022
Description:Display the longest and shortest user name on the system.
Sample Input:./18_largest_username.sh
Sample Output:The Longest Name is:speed-dispatcher
              The Shortest name is:lp
Documentation

mxlength=$(cut -d: -f1 < /etc/passwd | wc -L)
milength=$mxlength
smallestname=""
for uname in $(cut -d: -f1 < /etc/passwd)
do
if [ $(#uname) -eq $mxlength ]
then
echo "The Longest Name is: $uname"
elif [ ${#uname} -lt $milength ]
then
milength=${#uname}
smallestname=$uname
fi
done
echo "The Shortest Name is: $smallestname"

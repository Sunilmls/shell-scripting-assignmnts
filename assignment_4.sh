#!/bin/bash
<<Documentation
Name:Sunil M L
Date:18/01/2022
Description:Write a script for arthmatic calculator using command line arguments
Sample Input:./04_arthmatic_calc.sh 25 + 41
Sample Output: 25 + 41 = 67
Documentation

sum=0
mul=0
div=0
sub=0
if [ $# -eq 0 ]
then
echo "Error:Invalid number of arguments"
echo "Usage:./04_arthmatic_calc 2.3 + 6.7"
else
n1=$1
n2=$3
case $2 in
+) sum=`echo "scale=2;$n1+$n2" |bc`
echo " $1 $2 $3 = $sum"
;;
x) mul=`echo "scale=2;$n1*$n2" |bc`
echo " $1 $2 $3 = $mul"
;;
/) div=`echo "scale=2;$n1/$n2" |bc`
echo " $1 $2 $3 = $div"
;;
-) sub=`echo "scale=2;$n1-$n2" |bc`
echo " $1 $2 $3 = $sub"
;;
*) echo " Error : Please pass 3 arguments "
echo "Usage:./04_arthmatic_calc 2.3 + 6.7"
;;
esac
fi

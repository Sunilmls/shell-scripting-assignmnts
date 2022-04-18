#!/bin/bash
<<Documentation
Name:Sunil M L
Date:18/01/2022
Description:Write a script to perform arthmatic opertaion on digits of a given number depending upon the operator
Sample Input:./08_opertaor_dependent.sh 1234+
Sample Output: Sum is 10
Documentation

if [ $# -gt 0 ]
then
var=$1
len=${#var}
len1=$(($len-1))
n1=`echo ${var:$len1:1}`
n2=`echo ${var:0:$len1}`
n3=`echo ${var:0:1}`
num=$n2
mod=0
sum=0
num=$n2
opr=$n1
while [ $num -gt 0 ]
do
mod=$(($num%10))
sum=`expr $((($sum*10)+($mod))) | bc`
num=$(($num/10))
done
mod1=0
sum=$sum
sub1=$(($n3+$n3))
sum1=0
mul1=1
div1=1
while [ $sum -gt 0 ]
do
mod1=$(($sum%10))
case $opr in
+) sum1=`echo $sum1+$mod1 | bc`
  sum=`echo $sum/10 | bc`
  ;;
-) sub1=`echo $sub1-$mod1 | bc`
   sum=`echo $sum/10 | bc`
   ;;
x) mul1=`echo "$mul1*$mod1" | bc`
   sum=`echo $sum/10 | bc`
   ;;
/)  div1=`echo "scale=2;$div1/$mod1" | bc`
   sum=`echo $sum/10 | bc`
   ;;
*) echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"
exit
;;
esac
done
case $opr in
+) echo "Sum of digits = $sum1"
;;
-) echo "Subtraction of digits = $sub1"
;;
x) echo "Multiplication of digits = $mul1"
;;
/) echo "Division of digits = $div1"
;;
*) echo " "
;;
esac
else
echo "Error : Please pass the arguments through CL."
echo "Usage : ./09_operator_dependent.sh 2345+"
fi

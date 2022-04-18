#!/bin/bash
<<Documentation
Name:Sunil M L
Date:18/01/2022
Description:Write a script to calculate BMI
Sample Input:Enter the weight and height:45 1.5
Sample Output: you are Normal
Documentation

read -p "Enter the weight and height:" w h
if [ `echo "$w<0"|bc` -eq 1 -o `echo "$h<0"|bc` -eq 1 ]
then
echo "Invalid Input"
else
hs=`echo $h*$h | bc`
BMI=`echo $w/$hs | bc`
if [ `expr "$BMI<18.5" | bc` -eq 1 ]
then
echo " You are UNDERWEIGHT"
elif [ `echo "$BMI>18.5" | bc` -eq 1 -a `echo "$BMI<24.5" | bc` ]
then
echo "You are NORMAL"
elif [ `echo "$BMI>25" | bc` -eq 1 -a `echo "$BMI<29.5" | bc` -eq 1 ]
then
echo " You are OVERWEIGHT"
elif [ `echo "$BMI>30" | bc` -eq 1 ]
then
echo "You are OBASE"
else
echo "please enter weight and height"
fi
fi


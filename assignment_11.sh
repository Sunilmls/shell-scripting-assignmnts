#!/bin/bash
<<Documentation
Name:Sunil M L
Date:18/01/2022
Description:Write a script to print chess board
Sample Input:./11_chess_board.sh
Sample Output:"chess_board pattern"
Documentation

k=0
m=0
for i in `seq 8`
do
for j in `seq 8`
do
m=$(($i+$j))
if [ $(($m%2)) -eq 0 ]
then
echo -e -n "\e[47m" " "
else
echo -e -n "\e[40m" " "
fi
done
echo -e -n "\e[0m" " "
echo
done

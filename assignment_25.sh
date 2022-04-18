#!/bin/bash
<<Documentation
Name:Sunil M L
Date:31/01/2022
Description:Use a recursive function to print each argument passed to the function.
Sample Input:./25_recursion.sh How are you? I am fine
Sample Output: 
              How
              are
              you?
              I
              am
              fine
Documentation

if [ $# -ne 0 ]
then
function func()
{
    echo $1
    arr=($@)
    arrlen=${#arr[@]}
    if [ $arrlen -ne 1 ]
    then
    func ${arr[@]:1}
    else
    exit
    fi
}
func $@
else
echo "Error : Pass the arguments through command line."
fi

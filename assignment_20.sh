#!/bin/bash
<<Documentation
Name:Sunil M L
Date:30/01/2022
Description:Write a script for genarating random 8-character passwords including alpha numeric characters
Sample Input:./20_random_password.sh
Sample Output:nH67thi0
Documentation

h=`cat /dev/urandom | tr -dc [:alnum:] | head -c 8`
# cat -> concatenate file and print on standard output
# /dev/urandom -> provide an interface to the kernal random genarator
# tr -> translate or delete character
# dc -> delete the compliment
# [:alnum:] -> All printable letters and digits
# head -> output the first part of files
# c -> print first byte of each file
echo $h

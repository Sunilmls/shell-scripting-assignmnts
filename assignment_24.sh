#!/bin/bash
<<Documentation
Name:Sunil M L
Date:02/02/2022
Description:Use pipes or redirection to create an infinite feedback loop
Sample Input:./24_redirection.sh
Sample Output: Before loop file contents
              Hai hello
              After loop file contents
              Hai hello
              Hai hello
              Hai hello
              .
              .
              .
              .
Documentation

touch out.txt
echo "Hai hello" > out.txt
echo "Before loop file contents"
cat out.txt
echo "After loop file contents"
tail -f out.txt >> out.txt | cat out.txt

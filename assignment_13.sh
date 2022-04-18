#!/bin/bash
<<Documentation
Name:Sunil M L
Date:27/01/2022
Description:Write a script to print the system information
Sample Input:./13_system_info.sh
Sample Output:"1.Currently logged users
               2.Your shell directory
               3.Home directory
               4.OS name and version
               5.Current Working Directory
               6.Number of users logged in
               7.Show all avaliable shells in your system
               8.Hard disk information
               9.CPU information
               10.Memory information
               11.File system information
               12.Currently running process
               
               Enter the choice:2
               Your shell directory is /bin/bash
               Do you want to continue (y/n) ? n
Documentation

echo "1.Currently logged users"
echo "2.Your shell directory"
echo "3.Home directory"
echo "4.OS name and version"
echo "5.Current Working Directory"
echo "6.Number of users logged in"
echo "7.Show all avaliable shells in your system"
echo "8.Hard disk information"
echo "9.CPU information"
echo "10.Memory information"
echo "11.File system information"
echo "12.Currently running process"

read -p "Enter the choice:" n
case $n in
1) echo -e -n "\rCurrently logged users is " 
whoami
;;
2) echo -e -n "\rYour shell directory is " 
echo $SHELL
;;
3) echo -e -n "\rHome directory is " 
echo $HOME
;;
4) echo -e -n "\rOS name and version is " 
uname -a
;;
5) echo -e -n "\rCurrent Working Directory is " 
pwd
;;
6) echo -e -n "\rNumber of users logged in is "
 w
;;
7) echo -e -n "\rShow all avaliable shells in your system is " 
cat /etc/shells
;;
8) echo -e -n "\rHard disk information is " 
lshw
;;
9) echo -e -n "\rCPU information is " 
cat /proc/cpuinfo
;;
10) echo -e -n "\rMemory information is " 
cat /proc/meminfo
;;
11) echo -e -n "\rFile system information is " 
df
;;
12) echo -e -n "Currently running process is " 
ps
;;
*) echo "Error:Invalid option. Please enter the valid option "
;;
esac

function sysinfo()
{
    echo "1.Currently logged users"
echo "2.Your shell directory"
echo "3.Home directory"
echo "4.OS name and version"
echo "5.Current Working Directory"
echo "6.Number of users logged in"
echo "7.Show all avaliable shells in your system"
echo "8.Hard disk information"
echo "9.CPU information"
echo "10.Memory information"
echo "11.File system information"
echo "12.Currently running process"

read -p "Enter the choice:" n
case $n in
1) echo -e -n "\rCurrently logged users is " 
whoami
;;
2) echo -e -n "\rYour shell directory is " 
echo $SHELL
;;
3) echo -e -n "\rHome directory is " 
echo $HOME
;;
4) echo -e -n "\rOS name and version is " 
uname -a
;;
5) echo -e -n "\rCurrent Working Directory is " 
pwd
;;
6) echo -e -n "\rNumber of users logged in is "
 w
;;
7) echo -e -n "\rShow all avaliable shells in your system is " 
cat /etc/shells
;;
8) echo -e -n "\rHard disk information is " 
lshw
;;
9) echo -e -n "\rCPU information is " 
cat /proc/cpuinfo
;;
10) echo -e -n "\rMemory information is " 
cat /proc/memifo
;;
11) echo -e -n "\rFile system information is " 
df
;;
12) echo -e -n "Currently running process is " 
ps
;;
*) echo "Error:Invalid option. Please enter the valid option "
;;
esac
}
a=1
y=y
n=n
while [ $a -gt 0 ]
do
read -p "Do you want to continue(y/n) ?" n1
if [ $n1 = $y ]
then
sysinfo
else
exit
fi
done

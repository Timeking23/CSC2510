#!/bin/bash
if [! -d "/home/kali/system_info" ]
then
mkdir system_info
fi

cd ./system_info 
touch system_info.txt

echo "System information has been gathered.  Here’s the summary: " >> system_info.txt
echo "date: " $(date +"%x %X %Z") >> system_info.txt
echo "user:" $(whoami) >> system_info.txt
echo "Current Working Directory: " $(pwd) >> system_info.txt
echo -e "System Usage: \n" $(top -b -i -n1) >> system_info.txt
echo >> system_info.txt
echo "Disk Usage: " && df  >> system_info.txt


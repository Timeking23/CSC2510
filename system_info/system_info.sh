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
echo -e "System Usage: \n" >> system_info.txt
top -b -i -n1 | head -5 >> system_info.txt
echo >> system_info.txt
echo "Disk Usage: " >> system_info.txt
df -H  >> system_info.txt

cat system_info.txt
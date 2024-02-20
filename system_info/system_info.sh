#!/bin/bash
mkdir system_info
cd ./system_info 
touch system_info.txt

echo "System information has been gathered.  Here’s the summary: "
echo "date: " $(date +"%x %X %Z")
echo "user:" $(whoami)
echo "Current Working Directory: " $(pwd)
echo -e "System Usage: \n" $(top -b -i -n1)
echo
echo "Disk Usage: " && df 

cat system_info.sh > system_info.txt
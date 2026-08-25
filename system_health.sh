#!/bin/bash

############
#Author:Suhas
#date:20th Aug
#
#This script is used to check the system health

set -e #Stops execution when there is an error


echo "          SYSTEM HEALTH REPORT       "


echo
echo "           CPU INFORMATION        "
echo "CPU Model:"

echo "------------------------------------------------------------"

lscpu | grep "Model name" | cut -d: -f2 | xargs


echo "CPU Cores:"
nproc

echo "------------------------------------------------------------"
echo
echo "           MEMORY USAGE       "
free -h

echo "------------------------------------------------------------"
echo
echo "           DISK USAGE           "
df -h

echo "-------------------------------------------------------------"

usage=$(df / | awk 'NR==2 {print $5}' |  tr -d '%' )

if [ "$usage" -ge 80 ]
then 
echo " Disk is more space"
else 
echo "disk is in healthy mode"
fi







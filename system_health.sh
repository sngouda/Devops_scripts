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



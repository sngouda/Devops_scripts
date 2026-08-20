#!/bin/bash

##############
#Author:Suhas
#Date:20th Aug

#This script is to check the given number is odd or even

set -e #It stops execution wheen there is an error in script

read -p "Enter the number to check odd or even:" num

if ((num %2==0))
  then
    echo "your number $num is Even"
  else 
     echo "your number $num is ODD"
fi     

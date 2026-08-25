#!/bin/bash

#############
#Author : Suhas
#Date : 25-08-2026


# check wheather the given number is positive,negetive or zero.
##############
set -e

read -p "Enter the number to check: " num

if [ $num -gt 0 ]
then
	echo " The number $num is positive number"
elif [ $num -eq 0 ]
 then 
	echo " The number $num is Zero"
else
	echo "The number $num is negetive"
fi

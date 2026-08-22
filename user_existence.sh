#!/bin/bash


################
#Author:Suhas
#date:22th Aug
#To check the user wheather they exists or not
###############

set -e

read -p "Enter your username: " user

#If user exists store it in the variable

exists=$(grep "$user" /etc/passwd || true )

if [ -n "$exists" ]
then
	echo "$user user is exits"
else 
        echo "$user not exists"
fi

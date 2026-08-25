#!/bin/bash


#############
# Author :suhas
# Date: 25-08-2026
# This script for installing tools 
#############

set -e

echo "This script is to install the listed tools using for loop"

for i in zip git maven nginx
do 
if which $i &> /dev/null;
 then 
         echo " $i already exists"
 else
 	echo "$i not found, installing $i"
	       sudo apt update &> /dev/null
	       sudo apt install $i -y &> /dev/null
		sleep 3
		echo "$i installed successfully"
 fi
done

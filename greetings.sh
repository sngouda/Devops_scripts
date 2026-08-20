#!/bin/bash

################
#Author:Suhas
#date:20th Aug
#This is the script of Greetings
###############

#Take the name of user from userinput

read -p "Enter your name:" name
date=$(date "+%y-%m-%d")
time=$(TZ="Asia /kolkata" date +"%H:%M")
#greet the user with echo statement and display the date and time.
echo "Hello $name !! , Welcome to the script , date is $date and time is $time "

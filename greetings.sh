#!/bin/bash

################
#Author:Suhas
#date:20th Aug
#This is the script of Greetings
###############

#Take the name of user from userinput

read -p "Enter your name:" name
date=$(date "+%y-%m-%d")

#greet the user with echo statement and display the time along with it.
echo "Hello $name !! , Welcome to the script , date is $date "

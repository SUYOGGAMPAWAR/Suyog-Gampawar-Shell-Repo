#!/bin/bash
#==================================================
#Author: Suyog
#Date: 25/01/2026
#
#This script outputs the node health

#version: v1
#==================================================

set -x #This is called debug mode. What it does is it prints the name of the process before executing it
echo
set -e #This command used in a shell script as a good coding practice cause this command exits the script when there is an error in the script
echo
set -o pipefail #So what is this command does is, it covers up for the drawbacks of set -e (i.e.the set -e command ignores the pipe failure set -e just sees	   if the last command is correct or not so even if the first command is wrong but the command after pipe is correct then it will not exit and continue        executing the program)
echo

df -h
echo
free -g
echo
nproc
echo
ps -ef | grep amazon | awk -F" " '{print $2}'

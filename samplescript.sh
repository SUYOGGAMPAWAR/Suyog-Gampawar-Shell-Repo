#!/bin/bash
#
#
#=======================================================================================================================
#Author : Suyog
#Date : 29/01/2026
#Purpose : Print a list of numbers which are divisible by 3, divisible by 5 but are not divisible by 15 between 1 to 100
#version : v1
#=======================================================================================================================
#
#
for i in {1..100}; do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
then
	echo $i
fi;
done

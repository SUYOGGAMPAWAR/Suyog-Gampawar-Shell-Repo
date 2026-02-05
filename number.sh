#!/bin/bash
#
#
#==========================================================
#Purpose : To count the no. of s in the word mississipi
#==========================================================
x=mississipi

grep -o "s" <<<"$x" | wc -l

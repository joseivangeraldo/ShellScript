#!/bin/bash
MY_SHELL="csh"

if [ "$MY_SHELL" = "bash" ]
then
    echo "You seen to like the bash shell"
elif [ "$MY_SHELL" = "csh" ]
then
    echo "You seen to like the csh shell"
else
    echo "You don't seen to like the bash shell and csh shellclear"
fi
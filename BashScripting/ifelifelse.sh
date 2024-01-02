#!/bin/bash

if [ ${1,,} = herbert ]; then
	echo "Oh, You're the boss here. Welcome!"
elif [ ${1,,} = help ]; then
	echo "just enter your username, duh!"
else
	echo "I don't know you are. But you're not a boss for me."
fi


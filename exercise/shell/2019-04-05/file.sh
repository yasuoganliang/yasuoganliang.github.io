#!/bin/bash
# author: yujinsheng
# date: 2019-04-05
# description: the status of a file
FILE=~/.vimrc
if [ -e "$FILE" ]; then
		if [ -f "$FILE" ]; then
				echo "$FILE is a regular file"
		fi
		if [ -d "$FILE" ]; then
				echo "$FILE is a directory"
		fi
		if [ -w "$FILE" ]; then
				echo "$FILE is a writable file"
		fi
		if [ -r "$FILE" ]; then
				echo "$FILE is a readable file"
		fi
		if [ -x "$FILE" ]; then
				echo "$FILE is a executable file"
		fi
else
		echo "$FILE does not exist"
		exit 1
fi
exit

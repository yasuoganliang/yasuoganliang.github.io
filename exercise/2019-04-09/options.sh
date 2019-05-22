#!/bin/bash
# author: yujinsheng
# date: 2019-04-09
# description: read options
# read -p "Enter some here > "
# echo "REPLY = '$REPLY'"

if read -t 10 -sp "Enter password phrase > " password;then
	echo -e "\npassword = $password"
else
	echo -e "\nInput time out" >&2
	exit 1
fi

#!/bin/bash
# author: yujinsheng
# date: 2019-05-16
# description: a menu driven system information program

DEPAY=3
echo $REPLY
while [[ $REPLY != 0 ]]; do
	clear
	cat <<- _EOF_
		Please select:
		1. Display system information
		2. Display Disk space
		3. Display Home Space Utilization
		0. Quit
	_EOF_
	
	read -p "Enter selection [0-3] > "
	if [[ $REPLY =~ ^[0-3]$ ]]; then
		if [[ $REPLY == 1 ]]; then
			echo "Hostname: $HOSTNAME"
			uptime
			sleep $DEPAY
			continue
		fi
		if [[ $REPLY == 2 ]]; then
			df -h
			sleep $DEPAY
			continue
		fi
		if [[ $REPLY == 3 ]]; then
			if [[ $(id -u) -eq 0 ]]; then
				echo "Home Space Utilization (All User)"
				du -sh /home/*
			else
				echo "Home Space Utilization ($USER)"
				du -sh $HOME
			fi
			sleep $DEPAY
			continue
		fi
		if [[ $REPLY == 0 ]]; then
			break
		fi
	else
		echo "Invild entry."
		sleep $DEPAY
	fi
done
echo "program terminated."

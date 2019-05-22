#!/bin/bash
# author: yujinsheng
# date: 2019-05-17 20:08
# description: a menu drivem system information program

clear
echo "
Please Select:
1. Display System Information
2. Display Disk Space
3. Display Home Utilization
0. Quit
"

read -p "Enter selection [0 - 3] > "
case $REPLY in
	0) echo "Program terminated."
		exit
		;;
	1) echo "Hostname: $HOSTNAME"
		uptime
		;;
	2) df -h
		;;
	3) if [[ $(id -u) -eq 0 ]]; then
		echo "Home Space Utilization (All User)"
		du -sh /home/*
	   else
		   echo "Home Space Utilization ($USER)"
		du -sh $HOME
	   fi
	   ;;
	*) echo "Invalid Entry" >&2
		exit 1
		;;
esac


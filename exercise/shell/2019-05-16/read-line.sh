#!/bin/bash
# author: yujinsheng
# date: 2019-05-16
# description: read line from a file

while read distro version release; do
	printf "Distro: %s\tVersion: %s\tRelease: %s\n"\
		$distro \
		$version \
		$release
done < until.sh

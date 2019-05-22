#!/bin/bash
# author: yujinsheng
# date: 2019-05-16
# description: while count numbers

count=1
while [ $count -le 5 ];do
	echo $count
	count=$((count + 1))
done
echo "finished."

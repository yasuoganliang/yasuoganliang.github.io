#!/bin/bash
# author: yujinsheng
# date: 2019-05-16
# description: until count display a series of numbers

count=1
until [ $count -gt 5 ]; do
	echo "count: $count"
	count=$((count + 1))
done
echo "Finished."

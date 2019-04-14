#!/bin/bash
# author: yujinsheng
# date: 2019-04-05
# description: evaluate the value of a string

valueOfString() {
	ANSWER=haha
	if [ -z "$ANSWER" ]; then # 判断字符串的长度是否为 0
			echo "$ANSWER is null" >&2 # 重定向到标准错误
			exit 1
	fi
	if [ "$ANSWER" = "yes" ]; then
			echo "the answer is yes"
	elif [ "$ANSWER" = "no" ]; then
			echo "the answer is no"
	elif [ "$ANSWER" = "haha" ]; then
			echo "the answer is haha"
	else
			echo "the answer is unknow"
	fi
}

valueOfString

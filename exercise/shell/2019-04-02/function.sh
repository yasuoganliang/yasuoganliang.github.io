#!/bin/bash
# author: yujinsheng
# date: 2019-04-02 20:19:00
# description: shell function

# function test() {
# 		a=$1
# 		b=$2
# 		c=$5
# 
# 		return $((a + b + c))
# }
# test 1 2 3 4 5
# echo $?

function test() {
		echo $1
		echo $2
		echo $3
		echo $4
		echo $# # 传递的参数个数
		echo $* # 所有参数的值
}

test 1 2 3 4 5 6
echo $?

function readInput() {
		read firstArg
		read secArg
		return $((firstArg + secArg))
}
readInput
echo $?

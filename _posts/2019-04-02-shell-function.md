---
title: shell 函数
date: 2019-04-02 20:17:00
categories: shell
excerpt: shell
tags:
 - shell
 - linux
---


### shell 函数的定义、执行、传参
* shell 脚本是解释型语言，从上自下执行
* 定义:
	* 可以使用 function name() 声明
	* 也可以使用 name() 声明，不带任何参数
	* 可以显示的指定返回值，如果不指定，则以最后一条命令的结果作为返回值，默认从 0-255
* 调用: 在声明后直接调用函数名
```
function name1() {
	a="a"
	return $a
}
name2() {
	b="b"
	return $b
}
name1;
```

* 函数参数
* 在调用时传递，使用 $ 符来接收参数值，按数值取，如 $1, $2 表示第一、第二个参数，同理到 $n, 当获取 10 以上的参数时，要使用 ${n} 获取
* 返回值使用 $? 获取，在命令行中，$? 表示一条命令的执行结果

```
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
```

* Shell脚本的调试方法
* Shell提供了一些用于调试脚本的选项，如下所示：
`-n 读一遍脚本中的命令但不执行，用于检查脚本中的语法错误`
`-v 一边执行脚本，一边将执行过的脚本命令打印到标准错误输出`
`-x 提供跟踪执行信息，将执行的每一条命令和结果依次打印出来`

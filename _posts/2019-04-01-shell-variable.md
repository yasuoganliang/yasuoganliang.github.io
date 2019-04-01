---
title: shell variable
categories: shell
date: 2019-04-01 18:53:00
excerpt: shell
tags: shell
---

### shell 变量
* 变量名由数字、字母下划线组成
* 变量名的第一个字母必须是字母或者下划线
* 变量名中不允许有空格或者标点符号
* 一般用大写字母表示常量，小写字母表示变量。
* *nix 系统李很多环境变量都使用大写
```
#!/bin/bash
_name="hey" # ok
# 1foo="1foo" # error
bar="bar"	# ok
```

### 变量和常量赋值
```
#!/bin/bash
# shell 使用井号注释文本
# 变量名=值 变量名和等号还有值之间不能有空格 `*nix` 按空格分隔
PI=3.1415
CONST="常量"
var="变量"

a="haha"
a1=${a}1 # 相当于字符拼接
b="this is a text"
c="$b $a"
d=$(ls -l ./) e=$((1 + 2 * 3))
```

### `here document` 一种 I/O 重定向形式
```
#!/bin/bash
# command 为可以接收标准输入的命令， _EOF_ 表示文本结束标志，表示输入文本结束，可以是任意的字符串
# command << _EOF_
# this is input
# _EOF_
```

#### 最后，完整的程序
```
#!/bin/bash
_name="hey" # ok
# 1foo="1foo" # error
bar="bar"	# ok

a="haha"

PI=3.1415
CONST="常量"
var="变量"

a="haha"
a1=${a}1 # 相当于字符拼接
b="this is a text"
c="$b $a"
d=$(ls -l ./) e=$((1 + 2 * 3))

echo $a1 $c

# cat << _EOF_
# 	haha $b
# 	there is stdout
# _EOF_


cat <<- _EOF_
 这里可以随意输入，之后都会打印
 print $a
_EOF_
# 最后的 _EOF_ 前后不能有其他符号，只能有 _EOF_ 几个字符
```

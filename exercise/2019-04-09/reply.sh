#!/bin/bash
# author: yujinsheng
# date: 2019-04-09
# description: read multiple values into default varibale

echo -n "Enter values > "
# 没有定义变量时，所有的输入都会写到默认变量 REPLY 中
read

echo "REPLY = $REPLY"

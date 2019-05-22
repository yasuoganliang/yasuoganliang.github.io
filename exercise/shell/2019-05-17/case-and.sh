#!/bin/bash
# author: yujinsheng
# date: 2019-05-17 20:26
# description: test a character

read -p "Type a character > "
echo 
case $REPLY in
	[[:upper:]]) echo "'$REPLY' is upper case." ;;&
	[[:lower:]]) echo "'$REPLY' is lower case." ;;&
	[[:alpha:]]) echo "'$REPLY' is alphabetic." ;;&
	[[:digit:]]) echo "'$REPLY' is digit." ;;&
	[[:graph:]]) echo "'$REPLY' is visible character." ;;&
	[[:punct:]]) echo "'$REPLY' is punctuation symble." ;;&
	[[:space:]]) echo "'$REPLY' is whitespace character" ;;&
	[[:xdigit:]]) echo "'$REPLY' is a hexadeciaml digit." ;;&
esac

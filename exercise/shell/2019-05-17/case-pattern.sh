#!/bin/bash
# author: yujinsheng
# date: 2019-05-17 20:18
# description: example of patterns

read -p "Enter words > "
case $REPLY in
	[[:alpha:]]) echo "is a single alphabetic character.";;
	[ABC][0-9])  echo "is A, B, C or followed by a digit.";;
	???)		 echo "is three character long." ;;
	*.txt) 		 echo "is a word ending in '.txt'";;
	*) 			 echo "is something else.";;
esac

#!/bin/awk -f
# author: yujinsheng
# date: 2019-05-19
# description: awk handle eth token file

awk '
BEGIN {
	line = 1
	flag = 0
	jsonStart = "{"
	jsonStop = "}"
	json = jsonStart
	# 位置
	pos = 0
	# 处理 json 的深度
	layer = 0
	print("BEGIN")
	print("The first line number is "line);
}
{
	print "Processing line " line
	# 判断当前这一行是不是字符串开头，过滤掉空格或者横杆开头的部分
	if ($0 ~ /^[a-zA-Z0-9]/) {
		if ($0 ~ /[>-]/) {
			# print "des"
			# print $0
			desOrNotice = desOrNotice + 1
			key = $1
			flag = 1
		} else if ($1 ~ /^links:/) {
			# print "links:"
			# print $0
			flag = 1
		} else {
			flag = 0
			# split($0, resArr, ": ");
			secondValues = $2;
			# 查找是否有单引号，单引号转意用 "'\''"，双引号转意直接用 "\"" 即可
			regDot = "'\''"
			if (secondValues ~ regDot) {
				gsub(regDot, "", secondValues);
			}
			jsonStr =  jsonStr $1 " " secondValues ", "
		}
	} else {
		if (NR != 1) {
			if ($0 ~ /^[ ]/ && flag == 1) {
				des = $0
				# print $1 "***" $2
				gsub(/^[ ]/, "", des)
				otherStr = otherStr des
			} else if ($0 ~ /^[-]/ && flag == 1) {
				linkListStr = linkListStr $2 " " $3 ", "
			} else {
				print "how what"
				flag = 0
			}
		} else {
			print "does not hanlder"
		}
		
		tmpStr = ", " key " \"" otherStr "\""
	}
	line = line + 1
}
END {
	gsub(/, $/, "", linkListStr)
	links = "links: { " linkListStr " }, "
	jsonStr = jsonStr links tmpStr
	print json jsonStr
	print "END"
}
' $*

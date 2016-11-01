#!/bin/bash

cat << CLOUD
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html2/loose.dtd">
<HTML>
	<HEAD>
		<TITLE>
		教授的信息
		</TITLE>
	</HEAD>
	<BODY>
		<TABLE>
CLOUD
	
awk 'BEGIN {FS=":"; OFS="</TD><TD>"} gsub(/^/, "<TR><TD>") gsub(/$/, "</TD></TR>") {print $1,$2,$3,$4}'
#awk 'BEGIN {FS=":"; OFS="</TD><TD>"} gsub(/^/, "<TR><TD>") gsub(/$/, "</TD></TR>") {print $0}'
cat << CLOUD
	</TABLE>
	</BODY>
	</HTML>
CLOUD

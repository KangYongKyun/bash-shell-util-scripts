#!/bin/sh

if [ $# -eq 1 ]
then 
	PROCESS_NAME=$1
else 
	echo "Usage : "$0" process_name"
	exit
fi

top -d 1 -p `pgrep $PROCESS_NAME | tr "\\n" ","  | sed 's/,$//'`

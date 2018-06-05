#!/bin/bash

cmd=${1?'Usage: knock.sh open/close'}
if [ $cmd == open ]; then
	echo -n "Enter hostname for open connection: " && \
	read host && \
	knock -v $host 2291 && sleep 2 && knock -v $host 8808 && sleep 2 && knock -v $host 5711; else
	if [ $cmd == close ]; then
		echo -n "Enter hostname for closing connection: " && \
		read host && \
		knock -v $host 5711 && sleep 2 && knock -v $host 2291 && sleep 2 && knock -v $host 8808; else
		exit 0
	fi
fi

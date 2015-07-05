#!/bin/bash


if [ "$1" == "start" ]
then
	gpio mode 7 out
	gpio write 7 0
fi

if [ "$1" == "stop" ]
then
	gpio write 7 1
fi

if [ "$1" == "status" ]
then
	gpio read 7
fi

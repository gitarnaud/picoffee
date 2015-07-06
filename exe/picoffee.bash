#!/bin/bash


if [ "$1" == "start" ]
then
	running_time=`bash /root/picoffee/exe/picoffee.bash running-time`
	if [[ "$running_time" == 0 ]] 
	then
		echo `date +%s` > /root/picoffee/data/start-time.txt
		gpio mode 7 out
		gpio write 7 0
	fi
fi

if [ "$1" == "stop" ]
then
	echo "0" > /root/picoffee/data/start-time.txt
	gpio write 7 1
fi

if [ "$1" == "status" ]
then
	off=`gpio read 7`
	if [ "$off" == "1" ]
	then
		echo "off"
	fi
	if [ "$off" == "0" ]
	then
		echo "on"
		tmp=`cat ../data/start-time.txt`
		start_time=`date --date @$tmp +"%Y-%m-%d %H:%M:%S"`
		echo "Started on $start_time"	
	fi
fi

#private
if [ "$1" == "running-time" ]
then
	start_time=`bash /root/picoffee/exe/picoffee.bash start-time`
	if [ "$start_time" == "0" ]
	then
		echo "0";
	else
		current_time=`date +%s`

		running_time="$(($current_time-$start_time))"
		echo $running_time
	fi
fi

if [ "$1" == "start-time" ]
then
        tmp=`cat /root/picoffee/data/start-time.txt`
        start_time=`date --date @$tmp +%s`
        echo $start_time
fi

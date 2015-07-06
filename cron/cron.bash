#!/bin/bash
bash /root/picoffee/exe/picoffee.bash start
running_time=`bash /root/picoffee/exe/picoffee.bash running-time`

echo $running_time

if [[ "$running_time" -gt 600 ]]
then
	bash /root/picoffee/exe/picoffee.bash stop
fi

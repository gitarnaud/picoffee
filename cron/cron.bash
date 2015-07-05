#!/bin/bash
bash /root/picoffee/exe/picoffee.bash start
running_time=`bash /root/picoffee/exe/picoffee.bash time`

echo $running_time

if [[ "$running_time" -gt 6000 ]]
then
	bash /root/picoffee/exe/picoffee.bash stop
fi

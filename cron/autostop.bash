#!/bin/bash
running_time=`bash /root/picoffee/exe/picoffee.bash running-time`

if [[ "$running_time" -gt 600 ]]
then
	bash /root/picoffee/exe/picoffee.bash stop
fi

# picoffee

This holds the code to make the Raspberry Pi control a coffee machine.

## Requirements : 

Download and install wiringpi library (http://wiringpi.com/)

## Features : 

* Start automatically based on cron expression
> Add a line to call the cron/cron.bash script in your crontab

* Stop after a certain time of inactivity
> Currently not configurable, set to 10 minutes

* Get current active time
> bash exe/picoffee.bash running-time

* Get current state
> bash exe/picoffee.bash status

* Start manually
> bash exe/picoffee.bash start

* Stop manually
> bash exe/picoffee.bash stop

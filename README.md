# picoffee

This holds the code to make the Raspberry Pi control a coffee machine.

## Requirements : 

Download and install wiringpi library (http://wiringpi.com/)

## Hardware

* This has been tested on a Raspberry Pi running Raspbian.
* Currently this activates the GPIO pin 7 in the wiringPi pin numbering scheme (http://wiringpi.com/wp-content/uploads/2013/03/gpio1.png)


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

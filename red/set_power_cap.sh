#!/bin/bash

POW="120000000"
POW1=$POW
POW2=$POW
SLEEP=0

echo "Will set Power CAP to $POW1 for cards 1-4 and $POW2 for cards 5-8"

sudo echo

echo "Card 1 - setting Power CAP to $POW1"
echo $POW1 | sudo tee /sys/class/hwmon/hwmon2/power1_cap >/dev/null
sleep $SLEEP
echo "Card 2 - setting Power CAP to $POW1"
echo $POW1 | sudo tee //sys/class/hwmon/hwmon3/power1_cap >/dev/null
sleep $SLEEP
echo "Card 3 - setting Power CAP to $POW1"
echo $POW1 | sudo tee /sys/class/hwmon/hwmon4/power1_cap >/dev/null
sleep $SLEEP
echo "Card 4 - setting Power CAP to $POW1"
echo $POW1 | sudo tee /sys/class/hwmon/hwmon5/power1_cap >/dev/null
sleep $SLEEP
echo "Card 5 - setting Power CAP to $POW2"
echo $POW2 | sudo tee /sys/class/hwmon/hwmon6/power1_cap >/dev/null
sleep $SLEEP
echo "Card 6 - setting Power CAP to $POW2"
echo $POW2 | sudo tee /sys/class/hwmon/hwmon7/power1_cap >/dev/null
sleep $SLEEP
echo "Card 7 - setting Power CAP to $POW2"
echo $POW2 | sudo tee /sys/class/hwmon/hwmon8/power1_cap >/dev/null
sleep $SLEEP
echo "Card 8 - setting Power CAP to $POW2"
echo $POW2 | sudo tee /sys/class/hwmon/hwmon9/power1_cap >/dev/null

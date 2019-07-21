#!/bin/bash

POW="170000000"
POW1=$POW
POW2=$POW
SLEEP=0

echo "Will set Power CAP to $POW1 for cards 1-4 and $POW2 for cards 5-8"

sudo echo

echo "Card 1 - setting Power CAP to $POW1"
echo $POW1 | sudo tee /sys/devices/pci0000:00/0000:00:1d.1/0000:0e:00.0/0000:0f:01.0/0000:10:00.0/0000:11:00.0/0000:12:00.0/hwmon/hwmon7/power1_cap >/dev/null
sleep $SLEEP
echo "Card 2 - setting Power CAP to $POW1"
echo $POW1 | sudo tee /sys/devices/pci0000:00/0000:00:1c.0/0000:04:00.0/0000:05:00.0/0000:06:00.0/hwmon/hwmon4/power1_cap >/dev/null
sleep $SLEEP
echo "Card 3 - setting Power CAP to $POW1"
echo $POW1 | sudo tee /sys/devices/pci0000:00/0000:00:1d.1/0000:0e:00.0/0000:0f:04.0/0000:15:00.0/0000:16:00.0/0000:17:00.0/hwmon/hwmon8/power1_cap >/dev/null
sleep $SLEEP
echo "Card 4 - setting Power CAP to $POW1"
echo $POW1 | sudo tee /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:00.0/0000:03:00.0/hwmon/hwmon3/power1_cap >/dev/null
sleep $SLEEP
echo "Card 5 - setting Power CAP to $POW2"
echo $POW2 | sudo tee /sys/devices/pci0000:00/0000:00:1d.1/0000:0e:00.0/0000:0f:05.0/0000:18:00.0/0000:19:00.0/0000:1a:00.0/hwmon/hwmon9/power1_cap >/dev/null
sleep $SLEEP
echo "Card 6 - setting Power CAP to $POW2"
echo $POW2 | sudo tee /sys/devices/pci0000:00/0000:00:1c.5/0000:07:00.0/0000:08:00.0/0000:09:00.0/hwmon/hwmon5/power1_cap >/dev/null
sleep $SLEEP
echo "Card 7 - setting Power CAP to $POW2"
echo $POW2 | sudo tee /sys/devices/pci0000:00/0000:00:1d.1/0000:0e:00.0/0000:0f:06.0/0000:1b:00.0/0000:1c:00.0/0000:1d:00.0/hwmon/hwmon10/power1_cap >/dev/null
sleep $SLEEP
echo "Card 8 - setting Power CAP to $POW2"
echo $POW2 | sudo tee /sys/devices/pci0000:00/0000:00:1c.6/0000:0a:00.0/0000:0b:00.0/0000:0c:00.0/hwmon/hwmon6/power1_cap >/dev/null
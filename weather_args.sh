#!/bin/bash

# takes args city, wttr format type, and refresh interval

city=$1
format=$2
refresh=$3

echo -e "Welcome back, $USER!"

# sets date to m/d/Y format
date=$(date +'%D')
cal=$(cal)

echo -e "Today is $date"
echo -e "$cal"

# keep while loop running for weather update
while true
do
  weather=$(curl -s http://wttr.in/$city?format=$format)
  echo "$weather"
  sleep $refresh
done

#!/bin/bash

echo -n "Enter your city to display weather: "
read city
today=$(date +%Y%m%d)
weather_report="raw_data_$today"

# city="Casablanca"
curl -s "wttr.in/$city" --output "$weather_report"

head -n 27 "$weather_report"

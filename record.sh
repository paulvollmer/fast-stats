#!/bin/bash

PAUSE_MINUTE=15

while :
do
	echo "$(date) ==> recording..."
	./node_modules/.bin/fast > tmp.txt
	echo "{\"date\": \"$(date)\", \"speed\": \"$(cat tmp.txt)\"}" >> report.txt
	echo "$(date) ==> pause ${PAUSE_MINUTE} minutes ..."
	sleep $((60 * ${PAUSE_MINUTE}))
done

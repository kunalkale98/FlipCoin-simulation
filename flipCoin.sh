#!/bin/bash -x
#Welcome to Flip Coin Simulation

isHead=1
heads=0
tails=0

while [ $heads -lt 21 -a $tails -lt 21 ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq $isHead ]
		then
			((heads++))
	else
		((tails++))
	fi
done

if [ $heads -eq 21 ]
	then
		echo "Heads have won"
else
	echo "Tails have won"
fi


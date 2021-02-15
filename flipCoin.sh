#!/bin/bash -x
#Welcome to Flip Coin Simulation

isHead=1
n=0
heads=0
tails=0

while [ $n -le 21 ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq $isHead ]
		then
			((heads++))
	else
		((tails++))
	fi
	((n++))
done

echo "Heads won "$heads" times"
echo "Tails won "$tails" times"

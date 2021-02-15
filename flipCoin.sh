#!/bin/bash -x
#Welcome to Flip Coin Simulation

isHead=1
heads=0
tails=0
diff1=0
diff2=0

while [ $diff1 -lt 2 -a $diff2 -lt 2 -o $heads -lt 21 -a $tails -lt 21 ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq $isHead ]
		then
			((heads++))
	else
		((tails++))
	fi
	diff1=$(($heads-$tails))
	diff2=$(($tails-$heads))
done

if [ $heads -gt $tails ]
	then
		echo "Heads have won"
else
	echo "Tails have won"
fi


#!/bin/bash

echo "Welcome To Flip Coin Simulator"

i=1
headWins=0
tailWins=0
flag=0

while [ $i -ne 60 ] && [ $flag -lt 21 ]
do

	flipCoin=$((RANDOM%2))

	if [ $flipCoin -eq 1 ]
	then 
		headWins=$(($headWins+1))
		flag=$headWins
	else

		tailWins=$(($tailWins+1))
		flag=$tailWins
	fi
	((i++))
done
if [ $headWins -eq $tailWins ]
then

echo The Match got Tie by:$i matches
echo Number of times Head Win:$headWins
echo Number of times Tail Win:$tailWins

elif [ $headWins -gt $tailWins ]
then

	echo total matches : $i
	echo Heads Won by : $headWins matches
	echo tails lose by: $tailWins matches
else
	echo total matches : $i
	echo tails Won by : $tailWins matches
	echo Heads lose by: $headsWins matches
fi

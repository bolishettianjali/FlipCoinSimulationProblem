#!/bin/bash

echo "Welcome To Flip Coin Simulator"

headWins=0
tailWins=0

for((flips=1;flips<=20;flips++))
do

	flipCoin=$((RANDOM%2))

	if [ $flipCoin -eq 1 ]
	then 
		headWins=$(($headWins+1))
	else

		tailWins=$(($tailWins+1))
	fi
done

echo Number of times Head Win:$headWins
echo Number of times Tail Win:$tailWins

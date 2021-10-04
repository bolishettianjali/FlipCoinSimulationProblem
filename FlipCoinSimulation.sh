#!/bin/bash

echo "Welcome To Flip Coin Simulator"

flipCoin=$((RANDOM%2))

if [ $flipCoin -eq 1 ]
then 
	echo Heads Win
else

	echo Tails Win
fi

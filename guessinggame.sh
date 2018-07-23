#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	answer=$(ls -l . | egrep -c '^-')
	if [[ $1 -lt $answer ]]
	then
		echo ${re[*]}
		echo "Too small, try again"
		bash guessinggame.sh
	elif [[ $1 -gt $answer ]]
	then
		echo ${re[*]}
		echo "Too large, try again"
		bash guessinggame.sh
	elif [[ $1 -eq $answer ]]
	then
		for i in "correct,  this is the end of the program"
		do
			echo $i
		done
	fi
}

echo "How many files are in this working directory?"
read ex
guessinggame $ex

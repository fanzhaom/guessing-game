#!/usr/bin/env bash
# File: guessinggame.sh
function guessinggame {
	# store the correct answer first
	local answer=$(ls | wc -l)
	# first guess 
	echo "How many files are there in this directory? Please take a guess:"
	read response
	echo "You guessed: $response"
	# whether the guess is correct
	while [[ !($response -eq $answer) ]]
	do
		# if the guess is too high
		if [[ $response -gt $answer ]]
		then
			echo "I'm sorry. Your guess is too high! Please try again:"
		# if the guess is too low
		else
			echo "I'm sorry. Your guess is too low! Please try again:"
			
		fi
		# guess again. update the response value
		read response
		response=$response
		
	done
	# while loop ends when guess/response is equal to the answer
	echo "Congratulation! You got the right answer! Answer is: $answer"
}

guessinggame
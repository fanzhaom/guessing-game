README.md: guessinggame.sh
	echo "#Guessing Game" > README.md
	echo "Date and time when making this README file:" >> README.md
	date >> README.md
	echo "number of lines of code contained in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md	

clean:
	rm README.md

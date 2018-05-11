README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	date >> README.md
	echo "\nNumber of lines:" >> README.md
	cat guessinggame.sh|wc -l >> README.md

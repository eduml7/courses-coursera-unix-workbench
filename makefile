README.md:
	touch README.md
	echo "#The Unix Workbench" >> README.md
	echo "**Make executed at**: *$$(date)*" >> README.md
	echo "**Number of lines** *$$(wc -l guessinggame.sh)*" >> README.md

clean:
	rm README.md

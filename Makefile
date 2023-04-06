#Linux target with a dependency clean
linux: clean
	./bin/linux.sh
#Clean target
clean: 
	./bin/cleanup.sh

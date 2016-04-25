CC=gcc

all:tplmake pump pump_cut clearemptylines

tplmake: tplmake.c
	$(CC) -DUNIX -o tplmake tplmake.c
	mv tplmake ../bin

pump: pump.c
	$(CC) -o pump pump.c
	mv pump ../bin

pump_cut: pump_cut.c
	$(CC) -o pump_cut pump_cut.c
	mv pump_cut ../bin

clearemptylines: clearemptylines.c
	$(CC) -o clearemptylines clearemptylines.c
	mv clearemptylines ../bin


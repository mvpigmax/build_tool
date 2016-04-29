CC=g++

all: pump.a

pump.a: vector.o stack.o sgml.o pumpsys.o pump.o env.o
	ar -r pump.a vector.o stack.o sgml.o pumpsys.o pump.o env.o
	mv pump.a ../../lib
	rm *.o

vector.o: vector.cpp vector.h
	$(CC) -c vector.cpp

stack.o: stack.cpp stack.h vector.h
	$(CC) -c stack.cpp

sgml.o: sgml.cpp sgml.h vector.h pumpsys.h
	$(CC) -c sgml.cpp

pumpsys.o: pumpsys.cpp pumpsys.h
	$(CC) -c pumpsys.cpp

pump.o: pump.cpp pump.h env.h
	$(CC) -c pump.cpp

env.o: env.cpp env.h sgml.h stack.h
	$(CC) -c env.cpp


install_dir=/usr/local/pump
install:
	if [ ! -d $(install_dir)/lib ]; then mkdir -p $(install_dir)/lib; fi
	if [ ! -d $(install_dir)/include ]; then mkdir $(install_dir)/include; fi
	cp ../../lib/* $(install_dir)/lib/
	cp pump.h $(install_dir)/include/

clean:
	rm -rf *.o ../../lib/pump.a

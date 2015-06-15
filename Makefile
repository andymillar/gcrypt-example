CXX = gcc
LDFLAGS = -lgcrypt
CXXFLAGS = -Wall -Wextra -g -lstdc++

BINS = keygen main

all: $(BINS)

gcry.o: gcry.cc gcry.hh
keygen: keygen.cc gcry.o
main: main.cc gcry.o

clean:
	rm -f *.o $(BINS)

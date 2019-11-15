CC=gcc
AR=ar

FLAGS= -Wall -g

all: mymathd mymaths mains maind	
mains: main.o power.o basicMath.o mymathd
	$(CC) $(FLAGS) -o mains main.o power.o basicMath.o libmyMath.a
maind: main.o power.o basicMath.o mymaths
	$(CC) $(FLAGS) -o maind ./libmyMath.so main.o power.o basicMath.o
mymaths:  power.o basicMath.o
	$(CC) -fPIC -shared -o libmyMath.so  basicMath.o power.o
mymathd: basicMath.o power.o
	$(AR) -rcs libmyMath.a basicMath.o power.o	
main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c
power.o: power.c myMath.h  
	$(CC) $(FLAGS) -c power.c 
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maind

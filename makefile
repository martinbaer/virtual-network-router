.PHONY :  clean
CC = gcc

CFLAGS = -Wall -pedantic -std=gnu99

RUSHBSwitch: main.o invocation.o open_port.o packet.o connect_switch.o
	$(CC) $(CFLAGS) -o $@ $^

main.o: main.c globals.h
	$(CC) $(CFLAGS) -c $<

invocation.o: invocation.c invocation.h
	$(CC) $(CFLAGS) -c $<

open_port.o: open_port.c open_port.h
	$(CC) $(CFLAGS) -c $<

packet.o: packet.c packet.h
	$(CC) $(CFLAGS) -c $<

connect_switch.o: connect_switch.c connect_switch.h
	$(CC) $(CFLAGS) -c $<


clean:
	rm -f *.o RUSHBSwitch
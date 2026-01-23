CC=gcc
CFLAGS=-Wall -Werror -g

main: chunk.o memory.o debug.o value.o vm.o

%_test : %_test.o %.o memory.o value.o chunk.o debug.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS)


CC=gcc
CFLAGS=-Wall -Werror -g -MD

OBJS = chunk.o memory.o debug.o value.o vm.o

main: $(OBJS)

%_test : %_test.o %.o test.h $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LDLIBS)

-include $(OBJS:.o=.d)

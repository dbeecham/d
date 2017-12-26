CFLAGS += -g3 -O0
LDLIBS += -lcurl -lncurses

d: d.o

d.c: d.rl
	ragel -G2 -o d.c d.rl

CFLAGS += -g3 -O0
LDLIBS += -lcurl -lncurses
RM ?= rm -f
RAGEL ?= ragel

d: d.o

%.c: %.c.rl
	$(RAGEL) -G2 -o $@ $<

clean:
	$(RM) d *.o

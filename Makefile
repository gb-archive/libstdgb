CC=sdcc -mgbz80
AR=sdar

COMPILE=$(CC) $(CFLAGS) -Iinclude -c

all: lib

lib:
	$(COMPILE) src/gbscreen.c
	$(AR) -rc libstdgb.lib *.rel

clean:
	rm -f *.asm *.lst *.rel *.sym *.lib

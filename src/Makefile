# src/Makefile.  Generated from Makefile.in by configure.

# VPATH-related substitution variables
srcdir		= .


# Package-related substitution variables
package		= shiny-bear
version		= 0.1
tarname 	= shiny-bear
distdir 	= $(tarname)-$(version)

# Prefix-related substitution variables
prefix		= /usr/local
exec_prefix	= ${prefix}
bindir		= ${exec_prefix}/bin

CC	?= gcc
CFLAGS	?= -g -o0 -Wall

all: shiny-bear

shiny-bear: main.o
	$(CC) $(CFLAGS) -o $@ main.o -lSDL
main.o: main.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $(srcdir)/main.c

clean:
	-rm *.o
	-rm shiny-bear

Makefile: Makefile.in ../config.status
	cd .. && ./config.status $@

../config.status: ../configure
	cd .. && ./config.status --recheck

install:
	install -d $(DESTDIR)/$(bindir)
	install -m 0755 shiny-bear $(DESTDIR)/$(bindir) 

uninstall:
	-rm $(DESTDIR)/$(bindir)/shiny-bear

.PHONY: all clean install uninstall

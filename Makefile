# Makefile.  Generated from Makefile.in by configure.

# VPATH-related substitution variables
srcdir		= .


# Package-related substitution variables
package 	= shiny-bear
version 	= 0.1
tarname 	= shiny-bear
distdir 	= $(tarname)-$(version)

# Prefix-related substitution variables
prefix		=/usr/local
exec_prefix	=$(prefix)
bindir		=$(exec_prefix)/bin

all clean install uninstall shiny-bear:
	$(MAKE) -C src $@

dist: $(distdir).tar.gz

$(distdir).tar.gz: FORCE $(distdir)
	tar chof - $(distdir) |\
	  gzip -9 -c > $(distdir).tar.gz
	rm -rf $(distdir)

$(distdir):
	mkdir -p $(distdir)/src
	cp $(srcdir)/configure $(distdir)
	cp $(srcdir)/config.h.in $(distdir)
	cp $(srcdir)/install-sh $(distdir)
	cp $(srcdir)/Makefile.in $(distdir)
	cp $(srcdir)/src/Makefile.in $(distdir)/src
	cp $(srcdir)/src/main.c $(distdir)/src

distcheck:  $(distdir).tar.gz
	gzip -cd $+ | tar xvf -
	cd $(distdir); ./configure
	$(MAKE) -C $(distdir) all
	$(MAKE) -C $(distdir) DESTDIR=$${PWD}/$(distdir)/_inst install uninstall
	$(MAKE) -C $(distdir) clean
	rm -rf $(distdir)
	@echo "*** Package $(distdir).tar.gz\
	  ready for distribution."

Makefile: Makefile.in config.status
	./config.status $@

config.status: configure
	./config.status --recheck

FORCE:
	-rm $(distdir).tar.gz &> /dev/null
	-rm -rf $(distdir) &> /dev/null

.PHONY: FORCE all clean dist distcheck
.PHONY: install uninstall

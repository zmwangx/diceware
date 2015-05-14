PREFIX ?= $(HOME)

.PHONY: all clean distclean install

all: diceware

diceware: main.o diceware8k.o
	$(LINK.c) main.o diceware8k.o -o diceware

clean:
	@- $(RM) main.o diceware8k.o diceware

distclean: clean

install:
	install -d $(PREFIX)/bin $(PREFIX)/share/man/man1
	install diceware $(PREFIX)/bin
	install -m 644 diceware.1 $(PREFIX)/share/man/man1

test:
	@ [ $(shell ./diceware | wc -l) = 10 ]

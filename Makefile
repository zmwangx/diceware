PREFIX ?= $(HOME)

.PHONY: all clean distclean install

all: diceware

diceware: main.o diceware8k.o
	$(LINK.c) main.o diceware8k.o -o diceware

clean:
	@- $(RM) main.o diceware8k.o diceware

distclean: clean

install:
	install diceware $(PREFIX)/bin

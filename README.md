[![Build Status](https://travis-ci.org/zmwangx/diceware.svg?branch=master)](https://travis-ci.org/zmwangx/diceware)

Introduction
------------

This is a simple C implementation of the
[Diceware passphrase generation scheme](http://world.std.com/~reinhold/diceware.html).
This implementation reads random bits from the `/dev/urandom` device, which
should be available on most Unix-like operating systems. The 8k word list,
`diceware8k.c`, is an unmodified copy downloaded from the official Diceware
website.

Installation
------------

Compiling from source:

    make
    PREFIX=/installation/path make install

The executable is installed to `$PREFIX/bin`, and the man page is installed to
`$PREFIX/share/man/man1`. If the `PREFIX` environment variable is not set, then
`HOME` is used instead.

Alternatively, you may install this via Homebrew:

    brew install https://raw.githubusercontent.com/zmwangx/diceware/master/diceware.rb

Usage
-----

To use, call `diceware` without argument, and it always prints ten random words
from the 8k word list, one per line. (According to the official Diceware FAQ
<http://world.std.com/~reinhold/dicewarefaq.html#howlong>, eight words should be
completely secure through 2050.)

Caution
-------

If you have a physical die, use it, since it is most likely more secure than the
PRNG (pseudo random number generator) used in this program. Although, I would
say, tossing a physical die fifty times and consulting the list ten times aren't
as convenient as typing `diceware`, so take your pick.

If you log your terminal sessions, be sure to purge the logs containing the word
lists generated by this program.

See Also
--------

EFF sells a [five dice set](https://supporters.eff.org/shop/eff-passphrase-dice)
for passphrase generation. You can get yourself a set while supporting digital
freedom.

<!-- Local Variables: -->
<!-- fill-column: 80 -->
<!-- End: -->

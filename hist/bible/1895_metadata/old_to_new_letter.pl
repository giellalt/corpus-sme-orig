#!/usr/bin/perl -w

use strict;
use utf8;
use feature 'unicode_strings';

while(<>) {
s/c̄/č/g;
s/C̄/Č/g;
s/ʒ̄/ǯ/g;
s/s̄/š/g;
s/S̄/Š/g;

	my $line = $_;

	print $line;
}


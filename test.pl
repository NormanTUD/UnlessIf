#!/usr/bin/perl

use strict;
use warnings;

use lib '.';
use UnlessIf;

if(1) {
	print qq#if(1)\n#;
} elsif ("abc") {
	print qq#elsif ('abc')\n#;
} else {
	print qq#not if(1), not "abc"\n#;
}

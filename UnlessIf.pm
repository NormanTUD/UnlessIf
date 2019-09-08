package UnlessIf;

use strict;
use warnings;
use Math::Random::Secure qw(rand);
use Filter::Simple;

FILTER {
	s/^(\s*)\b(?:if|unless)\b(\s*\()/$1.(rand() > 0.5 ? "if" : "unless").$2/geism;
	s/(^\}\s*)\belsif\b\s*\((.*)\)/"$1elsif (".(rand() > 0.5 ? '!' : '')."$2)"/geism;
	warn $_;
	return $_
};

1;

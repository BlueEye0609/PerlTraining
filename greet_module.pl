#!/usr/bin/env perl
use Modern::Perl;

# BEGIN {
#    push @INC, '.';
# }

use FindBin '$Bin'; # find the directory the script is located.
use lib $Bin;

use modules::Greet;

my $foo = 'FOO';
say join "\n" => greet("Hi" => @ARGV);
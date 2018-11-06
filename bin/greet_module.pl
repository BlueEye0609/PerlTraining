#!/usr/bin/env perl
use Modern::Perl;

# BEGIN {
#    push @INC, '.';
# }

use FindBin '$Bin'; # find the directory the script is located.
use lib "$Bin/../lib/";

use Greet;

my $foo = 'FOO';
say join "\n" => Greet::greet("Hi" => @ARGV);
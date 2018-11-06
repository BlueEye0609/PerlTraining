#!/usr/bin/env perl
use Modern::Perl;

# BEGIN {
#    push @INC, '.';
# }

use FindBin '$Bin'; # find the directory the script is located.
use lib "$Bin/../lib/";

# use modules::Greet_2 qw(greet);
use Greet_2 qw(:example);

say join "\n" => greet("Hi" => @ARGV);
#!/usr/bin/env perl
use Modern::Perl;

# BEGIN {
#    push @INC, '.';
# }

use FindBin '$Bin'; # find the directory the script is located.
use lib $Bin;

use modules::Greet;
say join "\n" => greet("HI" => @ARGV);
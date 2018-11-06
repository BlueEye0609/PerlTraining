#!/usr/bin/env perl
use Modern::Perl;
use Getopt::Long;
use Pod::Usage;

GetOptions(
   'h|help' => sub { pod2usage(-exit => 0) },
) or pod2usage;
# BEGIN {
#    push @INC, '.';
# }

use FindBin '$Bin'; # find the directory the script is located.
use lib "$Bin/../lib/";

# use modules::Greet_2 qw(greet);
use Greet_2 qw(:example);

say join "\n" => greet("Hi" => @ARGV);

=head1 NAME

 greet_module_2.pl - output greet

=head1 SYNOPSIS

  greet_module_2.pl [-h]

=head1 DESCRIPTION

B<greet_module_2> is the best, bla bla bla, C<code code>

=head1 OPTIONS

=over

=item B<-h>

Help Help help

=back

Some Example:
  use Foobar;
  Example->code()

=cut
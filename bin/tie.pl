#!/usr/bin/perl
use Modern::Perl;

package Time {
   sub TIESCALAR {
      bless \my $x;
   }

   sub FETCH {
      time;
   }
}

tie my $foo => 'Time';
say $foo;

sleep(1);

say $foo;
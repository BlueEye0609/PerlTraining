package Greet;
use Modern::Perl;

our $VERSION = 0.1;

sub greet {
   my $salutation = shift // die;
   return map { "$salutation $_" } @_;
}

1;
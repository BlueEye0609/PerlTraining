package Greet_2;
use Modern::Perl;

use parent 'Exporter';
# use base 'Exporter';
our $VERSION = 0.1;
our @EXPORT = ();
our @EXPORT_OK = qw(greet);
our %EXPORT_TAGS = (
  example => [qw(greet)],
);

# sub import {
#
# }

sub greet {
   my $salutation = shift // die;
   return map { "$salutation $_" } @_;
}

1;
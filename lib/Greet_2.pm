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

__END__

=head1 NAME

 Greet_2 - the universal greeter

=head1 SYNOPSIS

  use Greet_2 qw(greet);
  @x = greet('Hi', 'Hans', 'Fred');

=head1 FUNCTIONS

=over

=item B<greet>(I<salutation>, I<name>...)

Be friendly.

=back

=head1 AUTHOR

It is from L<yejing.huang@sap.com>
   L<GMP::foo::Bar> L<http://foobar.com/>

B<<  >>


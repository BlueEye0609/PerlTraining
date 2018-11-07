package Person;
use Carp;
use Modern::Perl;

sub new {
   my $class = shift; # class name
   my $name = shift // die; # name of the person

   my $self = bless {}; #if no class specified, just assign the reference to the current package.
   # bless( $self, $class );

   $self->{name} = $name;
   # my $self = bless { name => shift }

   return $self;
}

# send object as the first parameter
sub name {                              # sub name { shift->{name} }
   my $self = shift;                    # sub name { $_[0]->{name} }
   return $self->{name};
}

sub set_name {
   my $self = shift;
   $self->{name} = shift // croak "name is missing"; # recommended to use croak then die.
   # croak the message will show where someone call our function. die will show the line 26, but it's not our problem.
   # return $self->{name};
   # return;
   not defined wantarray or croak 'do not expect anything';
}

sub DESTROY {
   warn "DESTROY(@_)\n";
}

return 1;
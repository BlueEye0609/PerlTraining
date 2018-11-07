package Employee;
use Modern::Perl;

use parent 'Person';
# use Person;
# our @ISA = qw(Person); # set package global.

sub new {
   my ($class, $name, $salary) = @_;
   my $self = $class->SUPER::new($name);
   $self->set_salary($salary);

   return $self;

}

sub set_salary {
   $_[0]->{salary} = $_[1];
}

sub salary {
   shift->{salary};
}

sub set_name {
   my ($self, $name) = @_;
   $name =~ /^[A-Z]/ or croak "Please start with a capital\n";
   $self->SUPER::set_name($name);

}

return 1;
#!/usr/bin/perl
use Modern::Perl;
use FindBin '$Bin'; # find the directory the script is located.
use lib "$Bin/../lib/";

use Employee;
use Data::Dumper;
use DDP;

# my $person = Person::new('Fred'); # WRONG
my $person = Employee->new('Fred', 42);
my $saved_person = $person;
# my $person3 = new Person('Fred'); # NOT RECOMMEND
#
# $person->set_salary(333);
say $person->name;
say $person->salary;

$person = undef;

say "DONE";
#!/usr/bin/perl
use Modern::Perl;
use FindBin '$Bin'; # find the directory the script is located.
use lib "$Bin/../lib/";

use Person;
use Data::Dumper;
use DDP;

# my $person = Person::new('Fred'); # WRONG
my $person = Person->new('Fred');
my $saved_person = $person;
# my $person3 = new Person('Fred'); # NOT RECOMMEND

$person->set_name('name1');
say $person->name;

$person = undef;

say "DONE";
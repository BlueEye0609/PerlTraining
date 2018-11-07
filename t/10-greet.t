use strict;
use warnings;
use Test::More;
use Test::Exception;

# use Greet qw(greet)
use_ok 'Greet_2', 'greet' or BAIL_OUT 'no sense in going';
can_ok 'Greet_2', qw(greet) or BAIL_OUT 'no sense in going, missing fucntions!';


# is set_value, 'expected result' => 'description'
is greet('Hi', 'Hans'), 'Hi Hans' => 'Greet a single person'; # this will fail because of function returns array to a variable

# diag()
dies_ok { greet() } 'Dies as expected';
# compare the data structure each element for each element so see if they are the same as each other.
is_deeply [greet('Hi')], [] => 'Got nothing';
is_deeply [greet('Hi', 'Hans')], ['Hi Hans'] => 'Greet Hans.';
is_deeply [greet('Hi', 'Hans', 'Fred')], ['Hi Hans', 'Hi Fred'] => 'Greet Hans and Fred.';


done_testing;
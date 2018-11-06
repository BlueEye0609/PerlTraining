use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
   NAME      => 'PerlTraining',
   VERSION   => '0.0.1',
   EXE_FILES => [ glob 'bin/*' ], # => [ 'bin/ddp.pl' ]
   PREREQ_PM => {
      'Modern::Perl' => '0',
   }, # modules that we needs in advance to build our package

);
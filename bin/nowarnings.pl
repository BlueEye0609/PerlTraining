#!/usr/bin/env perl
use strict;
use warnings;

my $x;
{
   no warnings 'uninitialized';
   print "x value : $x";
}
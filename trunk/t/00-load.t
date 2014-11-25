#!perl -T

use Test::More tests => 3;

BEGIN {
    use_ok( 'XAS::Model::Database' ) || print "Bail out!\n";
    use_ok( 'XAS::Model::DBM' )      || print "Bail out!\n";
    use_ok( 'XAS::Model' )           || print "Bail out!\n";
}

diag( "Testing XAS::Model $XAS::Model::VERSION, Perl $], $^X" );


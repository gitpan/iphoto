# $Id: compile.t,v 1.1.1.1 2004/02/20 14:36:19 comdog Exp $

use Test::More tests => 1;

my $file = "blib/script/iphoto";

print "bail out! Script file is missing!" unless -e $file;

my $output = `perl -c $file 2>&1`;

print "bail out! Script file is missing!" unless
	like( $output, qr/syntax OK/, 'script compiles' );

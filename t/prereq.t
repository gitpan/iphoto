# $Id: prereq.t,v 1.1.1.1 2004/02/20 14:36:19 comdog Exp $
local $^W = 0;

use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();

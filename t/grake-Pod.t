use warnings;
use strict;

use Test::More;

eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;

my @poddirs = qw(man1);

all_pod_files_ok (all_pod_files(@poddirs));

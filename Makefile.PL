#!/usr/bin/env perl

use warnings;
use strict;

use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME' => 'grake',
    ( $[ >= 5.8 )
    ? ( AUTHOR => 'Toni Gundogdu <legatvs@gmail.com>',
        'ABSTRACT' => 'Scan webpages for Youtube video links',
        )
    : (),
    'VERSION_FROM' => 'bin/grake',
    'EXE_FILES' => ['bin/grake'],
    'PREREQ_PM' => {
# Earlier versions may work -- confirmed to work with:
'Getopt::ArgvFile' => 1.11,  # <http://search.cpan.org/perldoc?Getopt::ArgvFile>
'LWP::UserAgent'   => 5.835, # <http://search.cpan.org/perldoc?LWP::UserAgent>
'version'          => 0.77,  # <http://search.cpan.org/perldoc?version>
'Test::Pod'        => 1.44,  # <http://search.cpan.org/perldoc?Test::Pod>
    },
    'LICENSE' => 'gpl',
);

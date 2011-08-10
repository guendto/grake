#!/usr/bin/env perl

use warnings;
use strict;

use 5.010001;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME' => 'grake',
    ( $[ >= 5.8 )
    ? ( AUTHOR => 'Toni Gundogdu <legatvs at sign gmail com>',
        'ABSTRACT' => 'YouTube video URL scanner',
        )
    : (),
    'VERSION_FROM' => 'bin/grake',
    'EXE_FILES' => ['bin/grake'],
    'PREREQ_PM' => {
# Earlier versions may work -- confirmed to work with:
#'Umph::Prompt'      => 0.1.0, # <http://umph.googlecode.com/>
'Getopt::ArgvFile' => 1.11,  # <http://search.cpan.org/perldoc?Getopt::ArgvFile>
'LWP::UserAgent'   => 5.835, # <http://search.cpan.org/perldoc?LWP::UserAgent>
'version'          => 0.77,  # <http://search.cpan.org/perldoc?version>
    },
    'LICENSE' => 'gpl',
    dist => {
        PREOP =>
'@if test -f .git/HEAD; then \
	git log --stat --after="Thu Nov 30 12:14:37 2010" >ChangeLog; \
fi',
        POSTOP   =>
'@if test -f .git/HEAD; then \
	git checkout ChangeLog; \
fi',
    },
);

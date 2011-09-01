#!/usr/bin/env perl

use warnings;
use strict;

use 5.010001;
use ExtUtils::MakeMaker;

WriteMakefile(
  'NAME'       => 'grake',
  DISTNAME     => 'grake',
  VERSION_FROM => 'bin/grake',
  PREREQ_PM    => {
                'Getopt::ArgvFile' => 1.11,
                'LWP::UserAgent'   => 5.835,
               },
  BUILD_REQUIRES     => {'ExtUtils::MakeMaker' => 0,},
  CONFIGURE_REQUIRES => {'ExtUtils::MakeMaker' => 0,},
  MIN_PERL_VERSION   => 5.010001,
  (
   $] >= 5.005
   ? (
      ABSTRACT_FROM => 'doc/man1/grake.1.pod',
      AUTHOR        => 'Toni Gundogdu <legatvs@cpan.org>'
     )
   : ()
  ),
  'LICENSE'   => 'gpl',
  'EXE_FILES' => ['bin/grake'],
  'MAN1PODS' =>
    {'doc/man1/grake.1.pod' => '$(INST_MAN1DIR)/grake.$(MAN1EXT)'},
  dist => {
    PREOP => '@if test -f .git/HEAD; then \
	git log --stat --name-only --date=short --abbrev-commit \
		--after="Thu Nov 30 12:14:37 2010" >ChangeLog; \
fi',
    POSTOP => '@if test -f .git/HEAD; then \
	git checkout ChangeLog; \
fi',
  },
);

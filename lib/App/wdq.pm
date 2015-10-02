package App::wdq;
use v5.14;

our $VERSION = '0.0.1';

1;
__END__

=head1 NAME

App::wdq - command line access to Wikidata Query Service

=begin markdown

# STATUS

[![Build Status](https://travis-ci.org/nichtich/wdq.png)](https://travis-ci.org/nichtich/wdq)
[![Coverage Status](https://coveralls.io/repos/nichtich/App-wdq/badge.png)](https://coveralls.io/r/nichtich/App-wdq)
[![Kwalitee Score](http://cpants.cpanauthors.org/dist/App-wdq.png)](http://cpants.cpanauthors.org/dist/App-wdq)

=end markdown

=head1 INSTALLATION

Either install from CPAN with all dependencies:

  cpanm App::wdq

or install dependencies as prebuild packages (for instance Debian) and copy
the `wdq` script at some place in your C<$PATH>:

  apt-get install libhttp-tiny-perl libjson-perl
  wget https://github.com/nichtich/wdq/raw/master/bin/wdq
  chmod +x wdq

=head1 USAGE
 
  wdq --help

=head1 COPYRIGHT AND LICENSE

Copyright Jakob Voss, 2015-

GPL 2.0

=cut

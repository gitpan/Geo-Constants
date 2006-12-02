require Exporter;
package Geo::Constants;

=head1 NAME

Geo::Constants - Perl Standard Geo:: package for constants

=head1 SYNOPSIS

  use Geo::Constants qw{pi};         #import into namespace
  print "PI: ", pi, "\n";

  use Geo::Constants;                #Perl OO
  my $obj = Geo::Constants->new();
  print "PI: ", $obj->pi, "\n";

=head1 DESCRIPTION

This module is a pure Perl port of the NGS program in the public domain "forward" by Robert (Sid) Safford and Stephen J. Frakes.  


=cut

use strict;
use vars qw($VERSION $PACKAGE @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);
@EXPORT_OK = (qw{pi});
$VERSION = sprintf("%d.%02d", q{Revision: 0.01} =~ /(\d+)\.(\d+)/);

=head1 CONSTRUCTOR

=head2 new

The new() constructor

  my $obj = Geo::Constants->new();
    
=cut

sub new {
  my $this = shift();
  my $class = ref($this) || $this;
  my $self = {};
  bless $self, $class;
  $self->initialize(@_);
  return $self;
}

=head1 METHODS

=cut

sub initialize {
  my $self = shift();
  my $param = shift();
}

=head2 pi

  my $pi = $obj->pi;

=cut

sub pi {return 4 * atan2(1,1);}

1;

__END__

=head1 TODO

Add more constants

=head1 BUGS

=head1 LIMITS

=head1 AUTHOR

Michael R. Davis qw/perl michaelrdavis com/

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

Geo::Functions
Geo::Ellipsoids

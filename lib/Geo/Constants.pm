require Exporter;
package Geo::Constants;

=head1 NAME

Geo::Constants - Perl Standard Geo:: package for constants

=head1 SYNOPSIS

  use Geo::Constants qw{PI DEG RAD}; #import into namespace
  print "PI: ", PI, "\n";

  use Geo::Constants;                #Perl OO
  my $obj = Geo::Constants->new();
  print "PI: ", $obj->PI, "\n";

=head1 DESCRIPTION

=cut

use strict;
#use vars qw($VERSION $PACKAGE @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
use vars qw($VERSION @ISA @EXPORT_OK);
@ISA = qw(Exporter);
@EXPORT_OK = (qw{PI DEG RAD});
$VERSION = sprintf("%d.%02d", q{Revision: 0.03} =~ /(\d+)\.(\d+)/);

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

=head2 PI

  my $pi = $obj->PI;

=cut

#use constant PI => 4 * atan2(1,1);

sub PI {
  return 4 * atan2(1,1); #Perl should complile this as a constant
}

=head2 DEG

  my $degress_per_radian = $obj->DEG;

=cut

#use constant DEG => 180 / PI;
sub DEG {
  return(180 / &PI); #Degrees per radian
}

=head2 RAD

  my $radians_per_degree = $obj->RAD;

=cut

#use constant RAD => PI / 180;
sub RAD {
  return(&PI / 180); #Radians per degree
}

use subs @EXPORT_OK;

1;

__END__

=head1 TODO

Add more constants

=head1 BUGS

=head1 LIMITS

=head1 AUTHOR

Michael R. Davis qw/perl michaelrdavis com/

=head1 LICENSE

Copyright (c) 2006 Michael R. Davis (mrdvt92)

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

Geo::Functions
Geo::Ellipsoids

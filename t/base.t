#!/usr/bin/perl -w
# -*- perl -*-

#
# $Id: base.t,v 0.1 2006/02/21 eserte Exp $
# Author: Michael R. Davis
#

=head1 Test Examples

base.t has good examples concerning how to use this module

=cut

use strict;
use lib q{lib};
use lib q{../lib};
use constant NEAR_DEFAULT => 7;

sub near {
  my $x=shift();
  my $y=shift();
  my $p=shift()||NEAR_DEFAULT;
  if (($x-$y)/$y < 10**-$p) {
    return 1;
  } else {
    return 0;
  }
}

sub dms2dd {
  my $d=shift();
  my $m=shift();
  my $s=shift();
  my $dir=shift()||'N';
  my $val=$d+($m+$s/60)/60;
  if ($dir eq 'W' or $dir eq 'S') {
    return -$val;
  } else {
    return $val;
  }
}

BEGIN {
    if (!eval q{
	use Test;
	1;
    }) {
	print "1..0 # tests only works with installed Test module\n";
	exit;
    }
}

BEGIN { plan tests => 4 }

# just check that all modules can be compiled
ok(eval {require Geo::Constants; 1}, 1, $@);

my $o = Geo::Constants->new();
ok(ref $o, "Geo::Constants");

ok ($o->pi, 4*atan2(1,1));

use Geo::Constants qw{pi};
ok (pi, 4*atan2(1,1));

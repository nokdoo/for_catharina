#!/usr/bin/env perl

use strict;
use warnings;
use GD::Chord::Piano;

open (my $base, '<', 'base.txt');
open (my $scale, '<', 'scale.txt');

my @bases = split /\s+/, readline $base;
my @scales = split /\s+/, readline $scale;

my $im = GD::Chord::Piano->new;

foreach my $base (@bases)
{
	foreach my $scale (@scales)
	{
		$base =~ s/base//g;
		my $chord = $scale.$base;
		my $file = "../../public/chord/piano/$chord.png";
		open (my $output, '>', $file);
		print $output $im->chord($chord)->png;
		close $output;
		system("perl", "resize.pl", "$file");
	}
}

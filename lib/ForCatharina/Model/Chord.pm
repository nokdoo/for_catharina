package ForCatharina::Model::Chord;

use strict;
use warnings;

use GD::Chord::Piano;

my $ext = '.png';

sub _makes
{
	my ($path, $chord) = @_;
	# print
	open (my $png, '>', $path.$chord.$ext) or die "Could not open file '$path.$chord.png'";
	my $im = GD::Chord::Piano->new;
	print $png, $im->chord($chord)->png;
	close $png;
}

sub chordpath
{
	my ($path, $chord) = @_;
	_makes($path, $chord) if not -e $path.$chord.$ext;
	return $path.$chord.$ext;
}

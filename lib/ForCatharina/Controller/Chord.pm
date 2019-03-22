package ForCatharina::Controller::Chord;
use Mojo::Base 'Mojolicious::Controller';
use Data::Dumper;
use Mojo::Log;

my $log = Mojo::Log->new;


# This action will render a template
sub html {
  my $self = shift;
  $log->debug($self->tx->remote_address);

  my @scale = qw/ C	C#	Db	D	D#	Eb	E	E#	Fb	F	F#	Gb	G	G#	Ab	A	A#	Bb	B	Cb	B#	/;

  my @base = qw/ base	-5	6	6(9)	69	M7	M7(9)	M79	M9	M11	M13	7	7(b5)	7b5	7(-5)	7-5	7(b9)	7b9	7(-9)	7-9	-9	-9(#5)	-9#5	7(b9,13)	7(-9,13)	7(9,13)	7(#9)	7#9	7(#11)	7#11	7(#13)	7#13	9	9(b5)	9b5	9(-5)	9-5	11	13	m	m6	m6(9)	m69	mM7	m7	m7(b5)	m7b5	m7(-5)	m7-5	m7(9)	m79	m9	m7(9,11)	m11	m13	dim	dim7	aug	aug7	augM7	aug9	sus4	7sus4	add2	add4	add9	/;


  # Render template "example/welcome.html.ep" with message
  # print Dumper $self;
  $self->render(
  	template=>'chord/piano/chord', 
	base=>\@base,
	scale=>\@scale,
  );
}
1;

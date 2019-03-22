package ForCatharina::Controller::Example;
use Mojo::Base 'Mojolicious::Controller';
use Data::Dumper;

# This action will render a template
sub welcome {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  # print Dumper $self;
  print $self->req->url->to_abs."\n";
  #$self->render(msg => 'Welcome to the Mojolicious real-time web framework!');
}

1;

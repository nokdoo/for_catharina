package ForCatharina;
use Mojo::Base 'Mojolicious';
use Data::Dumper;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Load configuration from hash returned by config file
  my $config = $self->plugin('Config');

  # Configure the application
  $self->secrets($config->{secrets});

  # Router
  my $r = $self->routes;

  # Normal route to controller
  # $r->get('/')->to('example#welcome');
  $r->get('/')->to('chord#html');
}

1;

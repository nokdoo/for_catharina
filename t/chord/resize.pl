#!/usr/bin/env perl

use warnings;
use strict;

use Image::Scale;
my $file = $ARGV[0];
my $img = Image::Scale->new($file) || die "Invalid file : $file";
$img->resize_gd( { width => 256, height => 86 } );
$img->save_png($file);

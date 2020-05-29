#!/usr/bin/env perl
use strict;
use warnings;

use Data::Dumper;

$Data::Dumper::Sortkeys = 1;
$Data::Dumper::Indent = 1;

local $Data::Dumper::Maxdepth = 0;

use FindBin;
use File::Basename;

use lib $FindBin::Bin;
use MainWindow;

my $pid = 0;
eval  { $pid = fork();};

exit if $pid;

my $title = 'wxToDo';
my $app = MainWindow->new(
-title => $title);

print Data::Dumper->Dump( [ $app ], [qw($app)]);

$app->MainLoop;

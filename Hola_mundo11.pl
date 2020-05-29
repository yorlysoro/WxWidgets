#!/usr/bin/perl -w
use strict;
use warnings;
use Wx;

#Se define la clase Hola_Mundo 
package Hola_Mundo;

use base qw(Wx::App);

sub OnInit
{
	my $self = shift;
	#Creamos la ventana principal
	my $frame = Wx::Frame->new(undef,
								-1, 
								'Hola Mundo',
								[1,1],
								[200,150]);
	$self->SetTopWindow($frame);
	$frame->Show(1);
}

package main;
my $wxobj = Hola_Mundo->new();
$wxobj->MainLoop;

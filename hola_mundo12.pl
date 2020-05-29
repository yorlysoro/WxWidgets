#!/usr/bin/perl -w
use strict;
use warnings;
use Wx;

package MyFrame;

use base qw(Wx::Frame);

sub new{
	my $class = shift;
	my $self = $class->SUPER::new(@_);
	
	my $panel = Wx::Panel->new($self,
								-1);
	$self->{txt} = Wx::StaticText->new($panel,
										-1,
										"Un ejemplo de boton",
										[50,15]);
	$self->{btn} = Wx::Button->new($panel,
									-1,
									">>> Presiona <<<",
									[50,50]);
									return $self;						
}

package ButtonApp;

use base qw(Wx::App);

sub OnInit{
	my $self = shift;
	my $frame = MyFrame->new(undef,
								-1,
								'Ejemplo de Boton',
								[1,1],
								[200,150]);
	$self->SetTopWindow($frame);
	$frame->Show(1);
}
package main;
my $wxobj = ButtonApp->new();
$wxobj->MainLoop;

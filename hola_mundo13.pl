#!/usr/bin/perl -w
use strict;
use warnings;
use Wx;

package MyFrame;

use Wx::Event qw(EVT_BUTTON);

use base qw/Wx::Frame/;

sub new{
	my $class = shift;
	my $self = $class->SUPER::new(@_);
	my $panel = Wx::Panel->new($self,
								-1);
	$self->{txt} = Wx::StaticText->new($panel,
										1,
										"Un ejemplo de boton",
										[50,15]);
	my $BTNID = 1;
	$self->{btn} = Wx::Button->new($panel,
									$BTNID,
									">>> Presiona <<<",
									[50,50]	);
	EVT_BUTTON($self,
				$BTNID,
				\&ButtonClicked);
	return $self;					
}

sub ButtonClicked{
	my ($self, $event) = @_;
	$self->{txt}->SetLabel("El boton ha sido presionado!");
}

package ButtonApp2;

use base qw(Wx::App);

sub OnInit{
	my $self = shift;
	my $frame = MyFrame->new(undef,
								-1,
								'Ejemplo de interaccion con Boton',
								[1,1],
								[200, 150]);
	$self->SetTopWindow($frame);
	$frame->Show(1);
}

package main;

my $wxobj = ButtonApp2->new();
$wxobj->MainLoop;

use strict;
use warnings;
package Programa;
use parent qw(Wx::App);
use Wx;

sub OnInit{
	my $programa = shift;
	my $ventana_principal = Wx::Frame->new(undef, -1, 'Golden Proportion');
	#Cambia el tamaño de la ventana al hacer clic sobre un boton
	my $boton = Wx::Button->new($ventana_principal, -1, 'make it golden');
	Wx::Event::EVT_BUTTON($boton, $boton, sub{
		my $tamano = $ventana_principal->GetSize;
		$tamano->SetWidth($tamano->GetHeight * 3.869);
		$ventana_principal->SetSize($tamano);
	});
	$ventana_principal->Center();
	$ventana_principal->Show(1);
	$programa->SetTopWindow($ventana_principal);
	return 1;
}
package main;
Programa->new->MainLoop;

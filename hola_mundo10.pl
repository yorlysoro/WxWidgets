
use strict;
use warnings;
package MiPrograma;
use parent qw (Wx::App);
use Wx;

sub OnInit{
	my $programa = shift;
	my $ventana_principal = Wx::Frame->new(undef, -1, 'Greetings Wx');
	
	$ventana_principal->Center();
	$ventana_principal->Show(1);
	$programa->SetTopWindow($ventana_principal);
	return 1;
}
package main;
MiPrograma->new->MainLoop;

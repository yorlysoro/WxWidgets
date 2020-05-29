use strict;
use warnings;
use Wx;

package MiPrograma;

use base 'Wx::App';

sub OnInit{
	my $self = shift;
	my $frame = Wx::Frame->new(
		undef, 		#Ventana padre
		-1,		#ventana de identificacion
		'Una aplicacion en WxPerl', #Titulo
		&Wx::wxDefaultPosition, #Posicion
		&Wx::wxDefaultSize, #Tamaño
		&Wx::wxMAXIMIZE_BOX | &Wx::wxCLOSE_BOX #estilo de ventana
	);
	$frame->Show;
}
MiPrograma->new->MainLoop;

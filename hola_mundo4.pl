
use warnings;
use strict;

use Wx;
use wxPerl::Constructors;

package MiPrograma;

use base 'Wx::App';

sub OnInit{
	my $sefl = shift;
	
	my $ventana_principal = wxPerl::Frame->new(undef, "Una aplicacion en WxPerl");
	my $boton = wxPerl::Button->new($ventana_principal, 'Clic aqui');
	Wx::Event::EVT_BUTTON($boton, -1, sub{ #Evento de Clic
		my ($b, $evt) = @_;
		$b->SetLabel('Listo');
		$b->Disable;
		
	});
	$ventana_principal->Show;
}

MiPrograma->new->MainLoop;

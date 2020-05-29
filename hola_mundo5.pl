use warnings;
use strict;
use Wx;
use wxPerl::Constructors;

package MiPrograma;

use base 'Wx::App';

sub OnInit{
	my $ventana_principal = shift;
	$ventana_principal = wxPerl::Frame->new(undef, 'Una aplicacion en WxPerl');
	$ventana_principal->SetMinSize([120,140]);
	
	my $boton = wxPerl::Button->new($ventana_principal, 'Clic aqui');
	Wx::Event::EVT_BUTTON($boton, -1, sub {
		my ($b, $evt) = @_;
		$b->SetLabel('Listo');
		$b->Disable;
	});
	$ventana_principal->Show;

}
MiPrograma->new->MainLoop;

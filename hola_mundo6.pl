
use warnings;
use strict;
use Wx;
use wxPerl::Constructors;

package MiPrograma;

use base 'Wx::App';

sub OnInit{
	my $ventana_principal = shift;
	$ventana_principal = wxPerl::Frame->new(undef, 'Una aplicacion en WxPerl');
	$ventana_principal->SetMinSize([120,80]);
	
	my $tamano = Wx::BoxSizer->new(&Wx::wxVERTICAL);
	my $boton = wxPerl::Button->new($ventana_principal, 'Clic aqui');
	$tamano->Add($boton, 1, &Wx::wxEXPAND);
	my $boton2 = wxPerl::Button->new($ventana_principal, 'No hagas clic');
	$tamano->Add($boton2, 2, &Wx::wxALIGN_BOTTOM);
	Wx::Event::EVT_BUTTON($boton, -1, sub {
		my ($b, $evt) = @_;
		$b->SetLabel('Listo');
		$b->Disable;
	});
	Wx::Event::EVT_BUTTON($boton2, -1, sub {
		&Wx::wxTheApp->ExitMainLoop;
	});

	$ventana_principal->Show;

}
MiPrograma->new->MainLoop;

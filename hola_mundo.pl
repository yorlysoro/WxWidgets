use strict;
use warnings;
use Wx;
#Se crae la base del programa
package MyApp;

use base 'Wx::App';

sub OnInit {
	my ($self) = @_;
	my $frame = Wx::Frame->new(
		undef,
		-1,
		'Hola Mundo', #Titulo 
		[-1,-1], #posision
		[250,250], #Tamaño
	);
	$frame->Show(1);
	return 1;
}

package main;
my $app = MyApp->new;
$app->MainLoop;

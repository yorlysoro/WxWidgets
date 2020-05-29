use strict;
use warnings;

use Wx;
use wxPerl::Constructors;
package MiPrograma;
use base 'Wx::App';

sub OnInit{
	my $self = shift;
	
	my $frame = wxPerl::Frame->new(undef, 'Una aplicacion en WxPerl');
	$frame->Show;
}

MiPrograma->new->MainLoop;

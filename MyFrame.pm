=head1 NAME
MyFrame  - Ventana Principal para el proyecto
=cut
use Modern::Perl;
package MyFrame;
use Wx;
use base 'Wx::Frame';

#Contructor

sub new{
	my $class = shift;
	my $title = @_ ? shift : 'Hello World!';
	
	my $self = $class->SUPER::new(undef,
									-1,
									$title,
									[-1, -1],
									[-1, -1],
	);
	my $panel = Wx::Panel->new($self);
	Wx::StaticText->new($panel,
						-1,
						'Bienvenido al mundo de WxPerl!',
						[20,20]
	);
	return $self;					
}
1;

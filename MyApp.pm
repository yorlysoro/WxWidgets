=head1 NAME

MyApp 

=cut

use Modern::Perl;
package MyApp;
use Wx;
use base 'Wx::App';
use MyFrame;

my %frame;

sub OnInit{
	my $self = shift;
	$frame{$self} = MyFrame->new;
	$frame{$self}->Show;
	return 1;
}

sub DESTROY
{
	my $self = shift;
	delete $frame{$self};
}
1;

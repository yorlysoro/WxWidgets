use strict;
use warnings;

use Wx;

sub new{
	my $class = shift @_;
	my %options = @_;
	my $self = { %options };
	bless $self, $class;
	
	return $self;
}
1;

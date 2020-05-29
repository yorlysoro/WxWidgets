use strict;
use warnings;

package MainFrame;
use Wx qw( :everything);
use base 'Wx::Frame';
use MyControls;

sub new {
	my $class = shift @_;
	my %options = @_;
	
	my @args = (
	$options{-parent} || undef,
	$options{-id} || -1,
	$options{-title} || $0,
	[
		$options{-x} || -1,
		$options{-y} || -1,
	],
	[
		$options{-width} || -1,
		$options{-height} || -1,
	]);
	push @args, $options{-style} if defined $options{-style};
	
	my $self = $class->SUPER::new(@args);
	
	$self->{' mainpanel'} = my $panel = Wx::Panel->new(
	$self,
	-1,
	[-1,-1],
	[-1,-1],
	wxBORDER_NONE |
	wxTAB_TRAVERSAL);
	$self->{' controls'} = MyControls->new();
	$self->Show(1);
	return $self;
}

package MainWindow;

use base 'Wx::App';

my %options = ();
sub new{
	my $class = shift @_;
	%options = @_;
	
	my $self = class->SUPER::new();
	$self->{' options'} = { %options };
	%options = ();
	return $self;
}

sub OnInit{
	my $self = shift @_;
	$self->GetAppName;
	$self->{ ' mainframe'} = MainFrame->new( %options );
	return $self;
}

1;

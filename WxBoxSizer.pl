package Wx::wxBoxSizer;
use strict;
use Wx qw(:sizer wxDefaultPosition wxDefaultSize
wxDEFAULT_DIALOG_STYLE wxRESIZE_BORDER);
use base 'Wx::Frame';
package BoxSizer;
sub new {
	my ($class, $parent) = @_;
	my $self = $class->SUPER::new(undef, -1, 'Wx_BoxSizer',
	wxDefaultPosition, wxDefaultSize, wxDEFAULT_DIALOG_STYLE |
	wxRESIZE_BORDER);
	
	my $tsz = Wx::BoxSizer->new(wxVERTICAL);
	my $fr = Wx::BoxSizer->new(wxHORIZONTAL);
	
	$fr->Add(Wx::Button->new($self, -1, 'Button 1'), 0, wxALL, 10);
	$fr->Add(Wx::Button->new($self, -1, 'Button 2'), 0, 0);
	$fr->Add(Wx::Button->new($self, -1, 'Button 3'), 0, wxTOP|wxBOTTOM, 5);
	
	$tsz->Add($fr, 1, wxGROW);
	$tsz->Add(10,10,0, wxGROW);
	
	my $sr = Wx::wxBoxSizer->new(wxHORIZONTAL);
	$sr->Add(Wx::Button->new($self, -1, 'Button 1'), 1, wxALL, 5);
	$sr->Add(Wx::Button->new($self, -1, 'Button 2'), 1, wxGROW|wxALL, 5);
	
	my $nsz = Wx::StaticBoxSizer->new(Wx::StaticBox->new(
	$self, -1, 'Wx::StaticBoxSizer'), wxVERTICAL);
	$nsz->Add(Wx::Button->new($self, -1, 'Button 3'), 1, wxGROW|wxALL, 5);
	$nsz->Add(Wx::Button->new($self, -1, 'Button 4'), 1, wxGROW|wxALL, 5);
	
	$tsz->Add($sr, 1, wxGROW);
	
	$self->SetAutoLayout(1);
	$self->SetSizer($tsz);
	$tsz->Fit($self);
	$tsz->SetSizeHints($self);
	$self->Show(1);
	return $self;
	
} 
sub add_to_tags{ qw(sizers) }
sub title { 'wxBoxSizer' }
my $app = BoxSizer->new();
$app->MainLoop;
1;

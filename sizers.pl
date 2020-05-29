use strict;
App->new()->MainLoop;
package App;
use base qw(Wx::App);
use Wx qw(:everything);

sub OnInit{
	my $self = shift;
	my ($frame, $sizer);
	
	$frame = Wx::Frame->new(
	undef, -1, 'A frame', wxDefaultPosition, wxSIZE(300,200)
	);
	
	$sizer = $self->init_sizer($frame);
	$frame->SetAutoLayout(1);
	$frame->SetSizer($sizer);
	$self->SetTopWindow($frame);
	$frame->Show(1);
}

sub init_sizer{
	my ($self, $frame) = @_;
	my ($sizer, $button);
	$sizer = Wx::GridSizer->new(2,3);
	foreach my $row (1 .. 2){
		foreach my $col (1 .. 3){
			$button = Wx::Button->new($frame, -1, "($row, $col)");
			$sizer->Add($button, 0, wxGROW | wxTOP | wxBOTTOM, 20); #Crea los Botones 
			##Cambia Tamaño
			##if(($row + $col) % 2){
				##$sizer->Add($button, 0, wxSHAPED);#wxGROW);
			##} else {
				##$sizer->Add($button);
			##}
			
		}
	
	}
	#Altura y anchura de botones
	$sizer = Wx::FlexGridSizer->new(2,3);
	my $add_button = sub {
		my ($w, $h) = @_;
		my $button = Wx::Button->new(
		$frame, -1, "($w, $h)", wxDefaultPosition, wxSIZE($w, $h)
		);
		$sizer->Add($button, 0, wxGROW);
	};
	$add_button->(90, 30);
	$add_button->(70, 40);
	$add_button->(50, 60);
	$add_button->(50, 80);
	$add_button->(50, 40);
	$add_button->(80, 70);
	return $sizer;
}
1;

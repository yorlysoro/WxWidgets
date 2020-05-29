use warnings;
use strict;
package MiPrograma;
use Wx qw/ :everything /;
use parent qw(Wx::App);

sub OnInit{
	my $programa = shift;
	my $ventana_principal = Wx::Frame->new(undef, -1, "Ruler");
	my $grid = Wx::FlexGridSizer->new(2, 4, 1, 1);
	$grid->AddGrowableCol(1);
	$grid->AddGrowableCol(3);
	my %txt;
	for my $label (qw(X Y H W)){
		$txt{$label} = Wx::TextCtrl->new($ventana_principal, -1, $label);
		$grid->Add(Wx::StaticText->new($ventana_principal, -1, $label.' :'), 0 &Wx::wxGROW | &Wx::wxALL, 5);
		$grid->Add($txt{$label}, 1, &Wx::wxGROW | &Wx::wxALL | wxALIGN_CENTRE_VERTICAL, 0);
	}
	Wx::Event::EVT_SIZE($ventana_principal, sub{
		my $size = $ventana_principal->GetSize;
		$txt{ 'H' }->SetValue($size->GetHeight);
		$txt{ 'W' }->SetValue($size->GetWidth);
		$_[1]->Skip;
	});
	Wx::Event::EVT_MOVE($ventana_principal, sub{
		my $pos = $ventana_principal->GetPosition;
		$txt{ 'X' }->SetValue($pos->x);
		$txt{ 'Y' }->SetValue($pos->y);
		$_[1]->Skip;
	});
	$ventana_principal->SetSizer($grid);
	$ventana_principal->Center();
	$ventana_principal->Show(1);
	$programa->SetTopWindow($ventana_principal);
	return 1;
}
package main;
MiPrograma->new->MainLoop;

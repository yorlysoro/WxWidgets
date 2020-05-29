use strict;
use warnings;

package MiPrograma;
use parent qw(Wx::App);
use Wx;

my %ratio = (Golden => 1.618, '2:3' => 1.5, '3:4' => 1.3333, Din => 1.41421, Square => 1);

sub OnInit{
	my $programa = shift;
	my $ventana_principal = Wx::Frame->new(undef, -1, 'Golden Proportion');
	my $sizer = Wx::BoxSizer->new(1);
	#Agrega diferentes botones y les asigna su tamaño
	my $tb = Wx::Button->new($ventana_principal, -1, '');
	my $width = $tb->GetSize->GetWidth;
	my $max_height = 0;
	$tb->Destroy;
	for my $label (keys %ratio){
		my $height = $width / $ratio{$label};
		$sizer->Add(Wx::Button->new($ventana_principal, -1, $label, [-1,-1], [$width, $height]));
		$max_height = $height if $height > $max_height;
	}
	$ventana_principal->SetSizer($sizer);
	$ventana_principal->SetSize([$width * keys %ratio, $max_height]);
	$ventana_principal->Center();
	$ventana_principal->Show(1);
	$programa->SetTopWindow($ventana_principal);
	return 1;
}

package main;
MiPrograma->new->MainLoop;

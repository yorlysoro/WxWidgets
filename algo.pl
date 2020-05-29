#!/usr/bin/perl -w -- 
#
# generated by wxGlade 0.7.2 on Thu Aug 25 16:16:57 2016
#
# To get wxPerl visit http://www.wxperl.it
#

use Wx 0.15 qw[:allclasses];
use strict;

# begin wxGlade: dependencies
# end wxGlade

# begin wxGlade: extracode
# end wxGlade

package ventana_principal;

use Wx qw[:everything];
use base qw(Wx::Frame);
use strict;

use Wx::Locale gettext => '_T';
sub new {
    my( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
    $parent = undef              unless defined $parent;
    $id     = -1                 unless defined $id;
    $title  = ""                 unless defined $title;
    $pos    = wxDefaultPosition  unless defined $pos;
    $size   = wxDefaultSize      unless defined $size;
    $name   = ""                 unless defined $name;

    # begin wxGlade: ventana_principal::new
    $self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    $self->{button_2} = Wx::Button->new($self, wxID_ANY, _T("button_2"));
    $self->{button_1} = Wx::Button->new($self, wxID_ANY, _T("button_1"));

    $self->__set_properties();
    $self->__do_layout();

    Wx::Event::EVT_BUTTON($self, $self->{button_1}->GetId, \&ExitMainLoop);

    # end wxGlade
    return $self;

}


sub __set_properties {
    my $self = shift;
    # begin wxGlade: ventana_principal::__set_properties
    $self->SetTitle(_T("frame_1"));
    # end wxGlade
}

sub __do_layout {
    my $self = shift;
    # begin wxGlade: ventana_principal::__do_layout
    $self->{sizer_1} = Wx::BoxSizer->new(wxVERTICAL);
    $self->{sizer_2} = Wx::BoxSizer->new(wxVERTICAL);
    $self->{sizer_2}->Add($self->{button_2}, 0, wxALIGN_CENTER|wxEXPAND|wxTOP, 0);
    $self->{sizer_2}->Add($self->{button_1}, 0, wxALIGN_BOTTOM|wxBOTTOM|wxEXPAND, 0);
    $self->{sizer_1}->Add($self->{sizer_2}, 1, 0, 0);
    $self->SetSizer($self->{sizer_1});
    $self->{sizer_1}->Fit($self);
    $self->Layout();
    # end wxGlade
}

sub ExitMainLoop {
    my ($self, $event) = @_;
    # wxGlade: ventana_principal::ExitMainLoop <event_handler>
    warn "Event handler (ExitMainLoop) not implemented";
    $event->Skip;
    # end wxGlade
}


# end of class ventana_principal

1;


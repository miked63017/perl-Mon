package Plugins::Goodbye;

use Plugin;
our @ISA = qw(Plugin); 

sub callback
{
    my ( $self, $data ) = @_;
    print "Callback from Goodbye\n";
    return(1);
}


1;
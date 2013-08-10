package Plugins::Command;

use Plugin;
our @ISA = qw(Plugin); 
#use Data::Dumper;


sub callback
{
    my ( $self, $data ) = @_;
    print "Callback from Command\n";
    return(1);
}


1;
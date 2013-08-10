package Plugins::Hello;

use Plugin;
our @ISA = qw(Plugin); 
#use Data::Dumper;

#our $name = "Hello";

sub name {return('Hello');}

sub callback
{
    my ( $self, $data ) = @_;
    print "Callback from Hello\n";
    return(1);
}


1;
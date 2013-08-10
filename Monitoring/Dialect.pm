package Dialect;
use Moose;
use lib "$ENV{HOME}/Monitoring";
use Dialect::Yaml;


sub encode
{
    my ( $self, $data ) = @_;
    my $dialect = Dialect::Yaml->new();
    my $encoded = $dialect->encode($data);
    return($encoded);
}

sub decode
{
    my ( $self, $data ) = @_;
    my $dialect = Dialect::Yaml->new();
    my $decoded = $dialect->decode($data);
    return($decoded);
}


1;
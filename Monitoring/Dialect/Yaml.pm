package Dialect::Yaml;
use Moose;
use YAML;

sub encode
{
    my ( $self, $data ) = @_;
    my $yaml = YAML::freeze($data);
    return(($yaml));
}

sub decode
{
    my ( $self, $data ) = @_;
    my $hash = YAML::thaw($data);
    return($hash);
}


1;

package Command::Writer;
use Moose;
use YAML;

has 'ConfFile' => ( isa => 'Any', is => 'rw', default => './Conf/Commands/Commands.yaml');
has 'CurYaml' => ( isa => 'Any', is => 'rw');
has 'perlObj' => ( isa => 'Any', is => 'rw');

sub get_current
{
    my ( $self ) = @_;
    if (-f $self->ConfFile)
    {
        if (YAML::LoadFile($self->ConfFile) == 1)
        {
            my $hash = {};
            $self->CurYaml(YAML::Load($hash));
        } else {
            $self->CurYaml(YAML::LoadFile($self->ConfFile));
        }
    }

}

sub write_current
{
    my ( $self ) = @_;
    if (-f $self->ConfFile)
    {
        $self->CurYaml(YAML::DumpFile($self->ConfFile, $self->CurYaml));
        return(0);
    }

}



1;
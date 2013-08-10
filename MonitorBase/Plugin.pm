package Plugin;

#use Data::Dumper;

sub name
{
    my ( $self ) = @_;
    #seems weird to do this to $self
    my $name = $self;
    $name =~ s/.*?::(.*)/$1/g;
    return($name);
}

1;
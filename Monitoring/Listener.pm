package Listener;
use Moose;
use Net::STOMP::Client;
use Data::Dumper;

has 'config' => (
               isa       => 'Any',
               is        => 'rw',
               #builder   => '_build_ps_list',
  );

has 'host' => ( isa => 'Str', is => 'rw', default => "192.168.1.2");
has 'port' => ( isa => 'Str', is => 'rw', default => '61613' );
has 'user' => ( isa => 'Str', is => 'rw', default => 'system' );
has 'password' => ( isa => 'Str', is => 'rw', default => 'manager' );

has 'SSL_ca_path' => (
               isa       => 'Str',
               is        => 'rw',
  );

has 'SSL_cert_file' => (
               isa       => 'Str',
               is        => 'rw',
  );

has 'SSL_key_file' => (
               isa       => 'Str',
               is        => 'rw',
  );

has 'SSL_passwd_cb' => (
               isa       => 'Str',
               is        => 'rw',
  );

has 'stomp' => ( isa => 'Net::STOMP::Client', is => 'rw' );
has 'timeOut' => ( isa => 'Str', is => 'rw', default => '20' );
has 'ClientID' => ( isa => 'Str', is => 'rw', default => 'PerlClientID');

sub connect
{
    my ( $self ) = @_;
    my $stomp = Net::STOMP::Client->new( host => $self->host,
                                     port => $self->port,
                                   );

    my $peer = $stomp->peer();
    printf("connected to broker %s (IP %s), port %d\n", $peer->host(), $peer->addr(), $peer->port());

    $stomp->connect(
        login    => $self->user,
        passcode => $self->password,
        'client-id' => $self->ClientID,
    );
    $self->stomp($stomp);
    printf("speaking STOMP %s with server %s\n", $stomp->version(), $stomp->server() || "UNKNOWN");
    printf("session %s started\n", $stomp->session());

}

sub listen
{
    my ( $self, $dest, $id ) = @_;
    $self->stomp->subscribe(destination => $dest, 
                            id => $id,
                            ack => 'client',
                            );
    return($self->stomp);
}

sub disconnect
{
    my ( $self ) = @_;

    $self->stomp->disconnect();
    printf("session ended\n");
}

1;
package Client::Object;
use Moose;

has 'command'   => (isa => 'Any', is => 'rw');
has 'contact'   => (isa => 'Any', is => 'rw');
has 'contectgroup'   => (isa => 'Any', is => 'rw');
has 'exthostinfo'   => (isa => 'Any', is => 'rw'); 
has 'extserviceinfo'   => (isa => 'Any', is => 'rw');
has 'host'   => (isa => 'Any', is => 'rw');
has 'hostdependency'   => (isa => 'Any', is => 'rw');
has 'hostescalation'   => (isa => 'Any', is => 'rw');
has 'hostgroup'   => (isa => 'Any', is => 'rw');
has 'service'   => (isa => 'Any', is => 'rw');
has 'servicedependency'   => (isa => 'Any', is => 'rw');
has 'serviceescalation'   => (isa => 'Any', is => 'rw');
has 'servicegroup'   => (isa => 'Any', is => 'rw');
has 'timeperiod'   => (isa => 'Any', is => 'rw');

has 'test' => ( isa => 'Any', is => 'rw', default => 'testDefault');

sub process
{
    print "works\n";
}


1;
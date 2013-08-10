package Client::Scanner;
use Moose;
use Parse::Netstat qw(parse_netstat);
use Data::Dumper;

has 'processList' => (
               isa       => 'Any',
               is        => 'rw',
               builder   => '_build_ps_list',
  );

has 'networkServiceList' => (
               isa       => 'Any',
               is        => 'rw',
               builder   => '_build_network_service_list',
  );

has 'host_name' => (
               isa       => 'Any',
               is        => 'rw',
               builder   => '_build_hostname',
  );


has 'host_alias' => (
               isa       => 'Any',
               is        => 'rw',
               builder   => '_build_hostname_alias',
  );

has 'host_address' => (
               isa       => 'Any',
               is        => 'rw',
               builder   => '_build_host_address',
  );


sub _build_hostname {
    my $out = `hostname -f`;
    chomp($out);
    return ($out);
}

sub _build_hostname_alias {
    my $out = `hostname -s`;
    chomp($out);
    return ($out);
}

sub _build_host_address
{
    my $interface="wlan0";
    my $ifconfig="/sbin/ifconfig";
    my @lines=qx|$ifconfig $interface| or die("Can't get info from ifconfig: ".$!);
    foreach(@lines){
        if(/inet addr:([\d.]+)/){
                return($1);
        }
    }
    #die("Cannot Find IP address for eth0\n");
}


sub _build_ps_list {
    return ( 'small', 'medium', 'large' )[ int( rand 3 ) ];
}

sub _build_network_service_list {
    my $output = `netstat -tupan | grep LISTEN`;
    my $res = parse_netstat output => $output;
    print Dumper($res);
}





1;
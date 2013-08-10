#!/usr/bin/perl

use Client::Scanner;
use Sender;
use Listener;
use Dialect;
use Data::Dumper;

use Client::Host;
use Client::Object;

my $host = Client::Host->new(host_name => 'ultrabook.linuxdork.com',
                             alias => 'ultrabook',
                             );
print $host->{host_name} . "\n";
my $obj = Client::Object->new(host => $host);


my $content = Dialect->new();
my $deliverable = $content->encode($obj);
print Dumper($deliverable);
my $send = Sender->new();
$send->connect();
#Figure out crap to send
$send->send( "/topic/testingtopic", $deliverable );

$send->disconnect();

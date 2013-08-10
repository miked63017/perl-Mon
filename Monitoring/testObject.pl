#!/usr/bin/perl
use Client::Command;
use Client::Contact;
use Client::Contactgroup;
use Client::Exthostinfo;
use Client::Extserviceinfo;
use Client::Host;
use Client::Hostdependency;
use Client::Hostescalation;
use Client::Hostgroup;
use Client::Service;
use Client::Servicedependency;
use Client::Serviceescalation;
use Client::Servicegroup;
use Client::Timeperiod;
use Client::Object;


my $command = Client::Command->new();
my $contact = Client::Contact->new();
my $contactgroup = Client::Contactgroup->new();
my $exthostinfo = Client::ExtHostinfo->new();
my $extserviceinfo = Client::Extserviceinfo->new();

my $host = Client::Host->new(hostname => 'ultrabook.linuxdork.com',
                             alias => 'ultrabook',
                             );

my $hostdependency = Client::Hostdependency->new();
my $hostescalation = Client::Hostescalation->new();
my $hostgroup = Client::Hostgroup->new();


my $obj = Client::Object->new(host =>  $host);
$obj->process();
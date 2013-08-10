#!/usr/bin/perl

use Net::STOMP::Client;
use Data::Dumper;

  $stomp = Net::STOMP::Client->new(host => "192.168.1.2", port => 61613);
  print Dumper($stomp);
  $stomp->connect(login => "guest", passcode => "guest");
  $stomp->send(destination => "/queue/perltest", body => "hello world!");
  $stomp->disconnect();


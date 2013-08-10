#!/usr/bin/perl

use Data::Dumper;
use Client::Command;

my $c = Client::Command->new( command_name => 'commandName', command_line => 'commandLine');
print Dumper($c);

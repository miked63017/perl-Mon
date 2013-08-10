#!/usr/bin/perl

use Listener;
use Module::Find;
#use Data::Dumper;

my @found = usesub Plugins;

while (1)
{
    foreach(@found)
    {
        my $stompListener = Listener->new(host => "801-mdonlon-pdev-01.host.advance.net",
                                          );
        $stompListener->connect();
        
        my $id = $_->{name} . "Listener";
        
        my $q = "/queue/" . $_->name() . ".listen";
        #print STDERR  "Listening on $q with id $id\n";
        my $appLink = $stompListener->listen($q, $id);

        while (my $frame = $appLink->wait_for_frames(timeout => 1)) {
          my $return = $_->callback($frame);

          if ($return == 1)
          {
            $appLink->ack(frame => $frame);
          } 
        }
    }
    sleep(10);
}
#!/usr/bin/perl

use Client::Scanner;
use Sender;
use Listener;
use Data::Dumper;
use Dialect;

use Client::Object;

#my $send = Sender->new();
#$send->connect();
#Figure out crap to send
#$send->send( "/topic/testingtopic", "Blah blah blah" );
my $listener = Listener->new();
$listener->connect();
my $stream = $listener->listen("/topic/testingtopic", 'id123');
my $content = Dialect->new();
while (my $frame = $stream->wait_for_frames()) {
  print Dumper($frame);
  #print Dumper(${$frame}[1]);
  #print Dumper(${$frame}[2]) . "\n";
  #my $encoded = ${$frame}[2];
  #print "${$encoded}\n";
  #my $data = `/home/mdonlon/decode.rb '${$encoded}'`;
  #print Dumper($data);
  #chomp(${$encoded});
  my $deliverable = $content->decode($frame->body);
  #my $data = decode_base64($frame->body);
  #chomp($data);
  print Dumper($deliverable);
  #$deliverable->process();
  print "Even Better.\n" if $deliverable->isa('Client::Object');
  #$data =~ s/!ruby\/sym\ /:/g;
  #$mc_reply = Load($data);
  #print Dumper($mc_reply);
  #$mc_body = Load($mc_reply->{":body"});
  #print $mc_reply->{":senderid"} . "> " . $mc_body . "\n";
  #print Dumper($mc_reply) . "\n\n\n\n\n";
  #print Dumper($mc_body) . "\n\n\n\n\n";
}



$listener->disconnect();






# 
#my $test = Client::Scanner->new();
#$test->networkServiceList;

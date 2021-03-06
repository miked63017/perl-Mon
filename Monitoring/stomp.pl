#!/usr/bin/perl
# simple Perl client for mcollective that just demonstrates
# how to construct requests, send them and process results.
#
# This is in effect a mc-find-hosts equivelant, you can fill in 
# filters in the request and only the matching ones will reply.
# 
# For this to work you need the SSL security plugin in MCollective
# 1.0.0 set to operate in YAML mode.

use YAML::Syck;
use Digest::MD5 qw(md5 md5_hex md5_base64);
use Crypt::OpenSSL::RSA;
use MIME::Base64;
use Net::STOMP::Client;
use Data::Dumper;

# The topics from your activemq, /topic/mcollective_dev/...
$mcollective_prefix = "mcollective";

# Path to your SSL private key and what it's called so the
# mcollectived will load yours
$ssl_private_key = "/home/mdonlon/.mcollective.d/peadmin-private.pem";
$ssl_private_key_name = "peadmin";

# A string representing your sending host
$mcollective_client_identity = "801-puppet-prod-01.host.advance.net";

# Stomp connection parameters
$stomp_host = "801-puppet-prod-01.host.advance.net";
$stomp_port = 61613;
$stomp_user = "mcollective";
$stomp_password = "S5fNabwqLIxvujbXR7a8";

$YAML::Syck::ImplicitTyping = 1;

$request{":msgtime"} = time();
$request{":filter"}{"identity"} = [];
$request{":filter"}{"fact"} = [];
$request{":filter"}{"agent"} = [];
$request{":filter"}{"cf_class"} = [];
$request{":requestid"} = md5_hex(time() . $$);
$request{":callerid"} = "cert=${ssl_private_key_name}";
$request{":senderid"} = $mcollective_client_identity;
$request{":body"} = Dump("ping");
$request{":msgtarget"} = "/topic/${mcollective_prefix}.discovery.command";

$key = "";

open(SSL, $ssl_private_key);
	while(<SSL>) {
		$key = $key . $_;
	}
close(SSL);

$rsa = Crypt::OpenSSL::RSA->new_private_key($key);
$request{":hash"} = encode_base64($rsa->sign($request{":body"}));

$mcrequest = Dump(\%request);
$marshmcrequest = `./encode.rb '$mcrequest1'`;
$stomp = Net::STOMP::Client->new(host => $stomp_host, port => $stomp_port, sockopts => {
                                                  # path of the directory containing trusted certificates
                                                  SSL_ca_path   => "/home/mdonlon/.mcollective.d",
                                                  # client certificate to present
                                                  SSL_cert_file => "/home/mdonlon/.mcollective.d/peadmin-cert.pem",
                                                  # client private key
                                                  SSL_key_file  => "/home/mdonlon/.mcollective.d/peadmin-private.pem",
                                                  # passphrase of the client private key
                                                  SSL_passwd_cb => sub { return("f478882c6f22d0ff164b6b025a69dd74e1ba431f") },
                                                 }
);
$stomp->connect(login => $stomp_user, passcode => $stomp_password);

$stomp->message_callback(sub {
		my ($self, $frame) = @_;

		$mc_reply = Load($frame->body);
		$mc_body = Load($mc_reply->{":body"});
		print $mc_reply->{":senderid"} . "> " . $mc_body . "\n";

		return($self);
	});

$stomp->subscribe(destination => "/topic/${mcollective_prefix}.discovery.reply", id => "");
$stomp->send(destination => "/topic/${mcollective_prefix}.discovery.command", body => $marshmcrequest, receipt     => $stomp->uuid(),);
$stomp->wait_for_receipts(timeout => 10);
# complain if some receipts are still pending
die("Receipt not received!\n") if $stomp->receipts();

$stomp->wait_for_frames(callback => sub { return(0) }, timeout => 5);
print Dumper($mcrequest);
$stomp->disconnect();

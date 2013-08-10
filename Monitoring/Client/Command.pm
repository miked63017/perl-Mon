package Client::Command;
use Moose;

has 'command_name'   => (isa => 'Any', is => 'rw'); # command_name
has 'command_line'   => (isa => 'Any', is => 'rw'); # command_line




1;
package Client::Contactgroup;
use Moose;


has 'contactgroup_name'   => (isa => 'Any', is => 'rw'); # contactgroup_name
has 'alias'   => (isa => 'Any', is => 'rw'); # alias
has 'members'   => (isa => 'Any', is => 'rw'); # contacts
has 'contactgroup_members'   => (isa => 'Any', is => 'rw'); # contactgroups



1;
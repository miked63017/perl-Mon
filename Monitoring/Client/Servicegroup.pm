package Client::Servicegroup;
use Moose;

has 'servicegroup_name'   => (isa => 'Any', is => 'rw'); # servicegroup_name
has 'alias'   => (isa => 'Any', is => 'rw'); # alias
has 'members'   => (isa => 'Any', is => 'rw'); # services
has 'servicegroup_members'   => (isa => 'Any', is => 'rw'); # servicegroups
has 'notes'   => (isa => 'Any', is => 'rw'); # note_string
has 'notes_url'   => (isa => 'Any', is => 'rw'); # url
has 'action_url'   => (isa => 'Any', is => 'rw'); # url

1;
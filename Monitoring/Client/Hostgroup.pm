package Client::Hostgroup;
use Moose;

has 'hostgroup_name'   => (isa => 'Any', is => 'rw'); # hostgroup_name
has 'alias'   => (isa => 'Any', is => 'rw'); # alias
has 'members'   => (isa => 'Any', is => 'rw'); # hosts
has 'hostgroup_members'   => (isa => 'Any', is => 'rw'); # hostgroups
has 'notes'   => (isa => 'Any', is => 'rw'); # note_string
has 'notes_url'   => (isa => 'Any', is => 'rw'); # url
has 'action_url'   => (isa => 'Any', is => 'rw'); # url



1;
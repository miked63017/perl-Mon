package Client::Hostescalation;
use Moose;


has 'host_name'   => (isa => 'Any', is => 'rw'); # host_name
has 'hostgroup_name'   => (isa => 'Any', is => 'rw'); # hostgroup_name
has 'contacts'   => (isa => 'Any', is => 'rw'); # contacts
has 'contact_groups'   => (isa => 'Any', is => 'rw'); # contactgroup_name
has 'first_notification'   => (isa => 'Any', is => 'rw'); # #
has 'last_notification'   => (isa => 'Any', is => 'rw'); # #
has 'notification_interval'   => (isa => 'Any', is => 'rw'); # #
has 'escalation_period'   => (isa => 'Any', is => 'rw'); # timeperiod_name
has 'escalation_options'   => (isa => 'Any', is => 'rw'); # [d,u,r]



1;
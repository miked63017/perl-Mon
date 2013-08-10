package Client::Contact;
use Moose;

has 'contact_name'   => (isa => 'Any', is => 'rw'); # contact_name
has 'alias'   => (isa => 'Any', is => 'rw'); # alias
has 'contactgroups'   => (isa => 'Any', is => 'rw'); # contactgroup_names
has 'host_notifications_enabled'   => (isa => 'Any', is => 'rw'); # [0/1]
has 'service_notifications_enabled'   => (isa => 'Any', is => 'rw'); # [0/1]
has 'host_notification_period'   => (isa => 'Any', is => 'rw'); # timeperiod_name
has 'service_notification_period'   => (isa => 'Any', is => 'rw'); # timeperiod_name
has 'host_notification_options'   => (isa => 'Any', is => 'rw'); # [d,u,r,f,s,n]
has 'service_notification_options'   => (isa => 'Any', is => 'rw'); # [w,u,c,r,f,s,n]
has 'host_notification_commands'   => (isa => 'Any', is => 'rw'); # command_name
has 'service_notification_commands'   => (isa => 'Any', is => 'rw'); # command_name
has 'email'   => (isa => 'Any', is => 'rw'); # email_address
has 'pager'   => (isa => 'Any', is => 'rw'); # pager_number or pager_email_gateway
has 'addressx'   => (isa => 'Any', is => 'rw'); # additional_contact_address
has 'can_submit_commands'   => (isa => 'Any', is => 'rw'); # [0/1]
has 'retain_status_information'   => (isa => 'Any', is => 'rw'); # [0/1]
has 'retain_nonstatus_information'   => (isa => 'Any', is => 'rw'); # [0/1]

1;
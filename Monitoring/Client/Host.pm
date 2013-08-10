package Client::Host;
use Moose;


has 'host_name'   => (isa => 'Any', is => 'rw'); # host_name
has 'alias'   => (isa => 'Any', is => 'rw'); # alias
has 'display_name'   => (isa => 'Any', is => 'rw'); # display_name
has 'address'   => (isa => 'Any', is => 'rw'); # address
has 'parents'   => (isa => 'Any', is => 'rw'); # host_names
has 'hostgroups'   => (isa => 'Any', is => 'rw'); # hostgroup_names
has 'check_command'   => (isa => 'Any', is => 'rw'); # command_name

has 'initial_state'   => (isa => 'Any', is => 'rw'); #[o,d,u]
has 'max_check_attempts'   => (isa => 'Any', is => 'rw'); ##
has 'check_interval'   => (isa => 'Any', is => 'rw'); ##
has 'retry_interval'   => (isa => 'Any', is => 'rw'); ##
has 'active_checks_enabled'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'passive_checks_enabled'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'check_period'   => (isa => 'Any', is => 'rw'); # timeperiod_name
has 'obsess_over_host'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'check_freshness'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'freshness_threshold'   => (isa => 'Any', is => 'rw'); ##
has 'event_handler'   => (isa => 'Any', is => 'rw'); # command_name
has 'event_handler_enabled'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'low_flap_threshold'   => (isa => 'Any', is => 'rw'); ##
has 'high_flap_threshold'   => (isa => 'Any', is => 'rw'); ##
has 'flap_detection_enabled'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'flap_detection_options'   => (isa => 'Any', is => 'rw'); #[o,d,u]
has 'process_perf_data'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'retain_status_information'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'retain_nonstatus_information'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'contacts'   => (isa => 'Any', is => 'rw'); # contacts
has 'contact_groups'   => (isa => 'Any', is => 'rw'); # contact_groups
has 'notification_interval'   => (isa => 'Any', is => 'rw'); ##
has 'first_notification_delay'   => (isa => 'Any', is => 'rw'); ##
has 'notification_period'   => (isa => 'Any', is => 'rw'); # timeperiod_name
has 'notification_options'   => (isa => 'Any', is => 'rw'); #[d,u,r,f,s]
has 'notifications_enabled'   => (isa => 'Any', is => 'rw'); #[0/1]
has 'stalking_options'   => (isa => 'Any', is => 'rw'); #[o,d,u]
has 'notes'   => (isa => 'Any', is => 'rw'); # note_string
has 'notes_url'   => (isa => 'Any', is => 'rw'); # url
has 'action_url'   => (isa => 'Any', is => 'rw'); # url
has 'icon_image'   => (isa => 'Any', is => 'rw'); # image_file
has 'icon_image_alt'   => (isa => 'Any', is => 'rw'); # alt_string
has 'vrml_image'   => (isa => 'Any', is => 'rw'); # image_file
has 'statusmap_image'   => (isa => 'Any', is => 'rw'); # image_file
has '2d_coords'   => (isa => 'Any', is => 'rw'); # x_coord
has 'y_coord'   => (isa => 'Any', is => 'rw'); # 3d_coords	#x_coord,y_coord,z_coord



1;
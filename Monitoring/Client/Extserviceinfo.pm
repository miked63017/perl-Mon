package Client::Extserviceinfo;
use Moose;


has 'host_name'   => (isa => 'Any', is => 'rw'); # host_name
has 'service_description'   => (isa => 'Any', is => 'rw'); # service_description
has 'notes'   => (isa => 'Any', is => 'rw'); # note_string
has 'notes_url'   => (isa => 'Any', is => 'rw'); # url
has 'action_url'   => (isa => 'Any', is => 'rw'); # url
has 'icon_image'   => (isa => 'Any', is => 'rw'); # image_file
has 'icon_image_alt'   => (isa => 'Any', is => 'rw'); # alt_string



1;
package Client::ExtHostinfo;
use Moose;


has 'host_name'   => (isa => 'Any', is => 'rw'); # host_name
has 'notes'   => (isa => 'Any', is => 'rw'); # note_string
has 'notes_url'   => (isa => 'Any', is => 'rw'); # url
has 'action_url'   => (isa => 'Any', is => 'rw'); # url
has 'icon_image'   => (isa => 'Any', is => 'rw'); # image_file
has 'icon_image_alt'   => (isa => 'Any', is => 'rw'); # alt_string
has 'vrml_image'   => (isa => 'Any', is => 'rw'); # image_file
has 'statusmap_image'   => (isa => 'Any', is => 'rw'); # image_file
has '2d_coords'   => (isa => 'Any', is => 'rw'); # x_coord,y_coord
has '3d_coords'   => (isa => 'Any', is => 'rw'); # x_coord,y_coord,z_coord



1;
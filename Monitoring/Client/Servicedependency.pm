package Client::Servicedependency;
use Moose;


has 'ependent_host_name'   => (isa => 'Any', is => 'rw'); # host_name
has 'dependent_hostgroup_name'   => (isa => 'Any', is => 'rw'); # hostgroup_name
has 'dependent_service_description'   => (isa => 'Any', is => 'rw'); # service_description
has 'host_name'   => (isa => 'Any', is => 'rw'); # host_name
has 'hostgroup_name'   => (isa => 'Any', is => 'rw'); # hostgroup_name
has 'service_description'   => (isa => 'Any', is => 'rw'); # service_description
has 'inherits_parent'   => (isa => 'Any', is => 'rw'); # [0/1]
has 'execution_failure_criteria'   => (isa => 'Any', is => 'rw'); # [o,w,u,c,p,n]
has 'notification_failure_criteria'   => (isa => 'Any', is => 'rw'); # [o,w,u,c,p,n]
has 'dependency_period'   => (isa => 'Any', is => 'rw'); # timeperiod_name



1;
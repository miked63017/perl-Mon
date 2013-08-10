package Client::Hostdependency;
use Moose;



has 'dependent_host_name'   => (isa => 'Any', is => 'rw'); # host_name
has 'dependent_hostgroup_name'   => (isa => 'Any', is => 'rw'); # hostgroup_name
has 'host_name'   => (isa => 'Any', is => 'rw'); # host_name
has 'hostgroup_name'   => (isa => 'Any', is => 'rw'); # hostgroup_name
has 'inherits_parent'   => (isa => 'Any', is => 'rw'); # [0/1]
has 'execution_failure_criteria'   => (isa => 'Any', is => 'rw'); # [o,d,u,p,n]
has 'notification_failure_criteria'   => (isa => 'Any', is => 'rw'); # [o,d,u,p,n]
has 'dependency_period'   => (isa => 'Any', is => 'rw'); # timeperiod_name


1;
package Nagfigurator::Read;

use Moose;
use Ym;

has 'nagCFG' => ( isa => 'Str', is => 'rw', default => $Ym::STRUCT_FILE);

sub read
{
  my ( $self ) = @_;
  my $tree = Ym::GetStruct($Ym::STRUCT_FILE, $Ym::NAGIOS_MAIN_CFG);

  # Add a new command
  #Ym::AddCommand($tree, ['new_command'], {'command_line' => 'check_ping'});

  # Add new hosts
  #Ym::AddHost($tree, ['host1', 'host2', 'READ_FILE=/tmp/hostlist'], 
  #  {
  #    'use' => 'default-host',
  #    'contact_groups' => 'new_user_group',
  #    'check_command' => 'new_command',
  #  }
  #);

  # Add new hostgroup
  #Ym::AddHostgroup($tree, ['hostgroup1'], {'members' => 'host1,host2'});

  # Add new service
  #Ym::AddService($tree, ['raid'], ['host1'], [], 
  #  {
  #    'use' => 'passive-service',
  #    'contact_groups' => 'some-admins',
  #    'max_check_attempts' => 1,
  #  }
  #);
  #
  ## or add services to hostgroup.
  #Ym::AddService($tree, ['raid'], [], ['hostgroup1'], {'use' => 'raid-service'});
Ym::SaveStruct($tree, $Ym::STRUCT_FILE);

Ym::GenerateCfg($tree, "./out/");
}

1;
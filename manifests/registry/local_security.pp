# mbs_test::local_security
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include mbs_test::local_security
class mbs_test::registery::local_security {

  local_security_policy { 'Maximum password age':
    ensure       => present,
    policy_value => '40',
  }

  local_security_policy { 'Enforce password history':
    ensure       => present,
    policy_value => '60',
  }

  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableCcm':
    type => dword,
    data => '1',
  }

  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableCdm':
    type => dword,
    data => '1',
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\Microsoft\SQMClient\Windows\CEIPEnable':
    type => dword,
    data => '0',
  }

}

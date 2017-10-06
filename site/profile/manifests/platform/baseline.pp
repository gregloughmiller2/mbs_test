class profile::platform::baseline (
  Boolean $orch_agent  = false,
  Array   $timeservers = ['0.pool.ntp.org','1.pool.ntp.org']
){

  # Global
  class {'::time':
    servers => $timeservers,
  }

  # OS Specific
  case $::kernel {
    'windows': {
      include ::profile::platform::baseline::westrock
    }
    default: {
      fail('Unsupported operating system!')
    }
  }

}

class profile::platform::baseline::westrock {

  # Data Center or Domain specific
  case $::domain {
    'pdx.puppet.vm': {
      include ::profile::platform::baseline::windows
      include ::profile::platform::baseline::winmbs
    }
    'syd.puppet.vm':   {
      include ::profile::platform::baseline::windows
    }
    default: {
      fail('Unsupported domain!')
    }
  }
}


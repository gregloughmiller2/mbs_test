class profile::platform::baseline::westrock {

  # Data Center or Domain specific
  case $::operatingsystemrelease {
    '2012 R3': {
      include ::profile::platform::baseline::windows
      include ::profile::platform::baseline::winmbs
    }
    default: {
      include ::profile::platform::baseline::windows
    }
  }
}


class profile::platform::westrock {

  include ::profile::platform::baseline::linux::packages
  include ::profile::platform::baseline::linux::vim

  class { selinux:
  mode => 'disabled',
  }
}



class profile::westrock::westrock {

  include ::profile::platform::baseline::linux::packages
  include ::profile::platform::baseline::linux::vim

  class { selinux:
  mode => 'disabled',
}



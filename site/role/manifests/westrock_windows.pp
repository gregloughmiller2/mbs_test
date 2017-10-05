# @summary This role installs IIS and sample content on port 80.
class role::westrock_windows {
  include ::profile::platform::baseline
}

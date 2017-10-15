# mbs_test::mbs_baseline
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include mbs_test::mbs_baseline
class mbs_test::mbs_baseline (
  $max_age = $mbs_test::params::max_age,
) inherits mbs_test::params {

  include mbs_test::registry::local_scurity
  include mbs_test::groups::group_security
}

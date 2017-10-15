# mbs_test::groups::group_security
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include mbs_test::groups::group_security
class mbs_test::groups::group_security {
  local_group_policy { 'Specify intranet Microsoft update service location':
   ensure = > 'present',
   policy_settings => { 
      'Set the intranet statistics server:' => 'https://demo.host.com',    
      'Set the intranet update service for detecting updates:' => 'https://demo.host.com',  
   }
 }
}

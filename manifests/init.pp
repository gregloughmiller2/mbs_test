class abc {
  include abc::pre
  include abc::strings::update_group_policy
  include abc::registry::update_local_policy
  include abc::post
}

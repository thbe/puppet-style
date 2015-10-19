# Class: style::config
#
# This module contain the configuration for style module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class style::config {

  # Setup configuration files
  file {
    $style::params::config_profile_conf:
      ensure  => present,
      mode    => '0644',
      owner   => root,
      group   => root,
      path    => $style::params::config_profile_conf,
      content => template($style::params::config_profile_conf_template);
  }
}

# == Class: style
#
# Full description of class style here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { '::style': }
#
# === Authors
#
# Thomas Bendler <project@bendler-net.de>
#
# === Copyright
#
# Copyright 2014 Thomas Bendler, unless otherwise noted.
#
class style inherits style::params {

  # Start workflow
  if $style::params::linux {
    # Containment
    contain style::package
    contain style::config

    # Include classes
    Class['style::package'] ->
    Class['style::config']
  }
}

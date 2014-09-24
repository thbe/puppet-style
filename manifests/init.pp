# == Class: style
#
# Deploy my usage style on local machine
#
# === Parameters
#
# This module has no parameters
#
# === Variables
#
# This module gas no variables
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

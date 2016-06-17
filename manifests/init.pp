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
# Copyright 2016 Thomas Bendler, unless otherwise noted.
#
class style inherits style::params {

  # Start workflow
  if $style::params::linux {
    class{'style::install': } ->
    class{'style::config': } ->
    Class['style']
  }
  else {
    warning('The current operating system is not supported!')
  }
}

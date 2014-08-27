# Class: style::package
#
# This module contain the package configuration for style module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class style::package {
  package { $style::params::packageHtop: ensure => installed; }
  package { $style::params::packageLsb: ensure => installed; }
  package { $style::params::packageVim: ensure => installed; }
  package { $style::params::packageWget: ensure => installed; }
  package { $style::params::packageXauth: ensure => installed; }
}

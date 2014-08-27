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
  package { $style::params::packageDmidecode: ensure => installed; }
  package { $style::params::packageDstat: ensure => installed; }
  package { $style::params::packageIftop: ensure => installed; }
  package { $style::params::packageIotop: ensure => installed; }
  package { $style::params::packageHtop: ensure => installed; }
  package { $style::params::packageNcftp: ensure => installed; }
  package { $style::params::packageNmap: ensure => installed; }
  package { $style::params::packageRedhatLsb: ensure => installed; }
  package { $style::params::packageRsync: ensure => installed; }
  package { $style::params::packageStrace: ensure => installed; }
  package { $style::params::packageTree: ensure => installed; }
  package { $style::params::packageUnzip: ensure => installed; }
  package { $style::params::packageVim: ensure => installed; }
  package { $style::params::packageWget: ensure => installed; }
  package { $style::params::packageXauth: ensure => installed; }
}

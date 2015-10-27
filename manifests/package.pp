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
  package { $style::params::package_dmidecode: ensure => installed; }

  package { $style::params::package_dstat: ensure => installed; }

  package { $style::params::package_iftop: ensure => installed; }

  package { $style::params::package_iotop: ensure => installed; }

  package { $style::params::package_htop: ensure => installed; }

  package { $style::params::package_ncdu: ensure => installed; }

  package { $style::params::package_ncftp: ensure => installed; }

  package { $style::params::package_nmap: ensure => installed; }

  package { $style::params::package_pv: ensure => installed; }

  package { $style::params::package_rsync: ensure => installed; }

  package { $style::params::package_screen: ensure => installed; }

  package { $style::params::package_strace: ensure => installed; }

  package { $style::params::package_tree: ensure => installed; }

  package { $style::params::package_unzip: ensure => installed; }

  package { $style::params::package_vim: ensure => installed; }

  package { $style::params::package_wget: ensure => installed; }

  package { $style::params::package_xauth: ensure => installed; }

  if $style::params::package_glances {
    package { $style::params::package_glances: ensure => installed; }
  }

  if $style::params::redhat {
    package { $style::params::package_redhat_lsb: ensure => installed; }
  }
}

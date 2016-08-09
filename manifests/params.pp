# Class: style::params
#
# This module contain the parameters for style module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class style::params {

  # Operating system specific definitions
  case $::osfamily {
    'RedHat' : {
      $linux                          = true
      $redhat                         = true

      # Package definition
      $package_nfs_utils              = 'nfs-utils'
      $package_vim                    = 'vim-enhanced'
      $package_system_storage_manager = 'system-storage-manager'
      $package_xauth                  = 'xorg-x11-xauth'
      if $::operatingsystemmajrelease == '5' {
        $package_redhat_lsb           = 'redhat-lsb'
      } else {
        $package_redhat_lsb           = 'redhat-lsb-core'
        $package_glances              = 'glances'
      }

    }
    'Debian' : {
      $linux                          = true
      $debian                         = true

      # Package definition
      $package_vim                    = 'vim'
      $package_xauth                  = 'xauth'
      $package_glances                = 'glances'
    }
    default  : {
      $linux                          = false
    }
  }

  # Style package definition
  $package_dmidecode            = 'dmidecode'
  $package_dstat                = 'dstat'
  $package_htop                 = 'htop'
  $package_iftop                = 'iftop'
  $package_iotop                = 'iotop'
  $package_ncdu                 = 'ncdu'
  $package_ncftp                = 'ncftp'
  $package_nmap                 = 'nmap'
  $package_pv                   = 'pv'
  $package_rsync                = 'rsync'
  $package_screen               = 'screen'
  $package_sslscan              = 'sslscan'
  $package_strace               = 'strace'
  $package_tree                 = 'tree'
  $package_unzip                = 'unzip'
  $package_wget                 = 'wget'

  # Config definition
  $config_profile_conf          = '/etc/profile.d/custom.sh'
  $config_profile_conf_template = 'style/etc/profile.d/custom.sh.erb'
}

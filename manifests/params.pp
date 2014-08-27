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
      $linux = true

      # Package definition
      $packageHtop            = 'htop'
      $packageLsb             = 'redhat-lsb'
      $packageVim             = 'vim'
      $packageWget            = 'wget'
      $packageXauth           = 'xauth'

      # Config definition
      $configProfileConf         = '/etc/profile.d/custom.sh'
      $configProfileConfTemplate = 'style/etc/profile.d/custom.sh.erb'
    }
    default  : {
      $linux = false
    }
  }

  # Style definitions
}

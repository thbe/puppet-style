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
      $redhat = true

      # Package definition
      $packageRedhatLsb = 'redhat-lsb-core'
      $packageVim       = 'vim-enhanced'
      $packageXauth     = 'xorg-x11-xauth'

    }
    'Debian' : {
      $linux = true
      $debian = true

      # Package definition
      $packageVim       = 'vim'
      $packageXauth     = 'xauth'
    }
    default  : {
      $linux = false
    }
  }

  # Style package definition
  $packageDmidecode          = 'dmidecode'
  $packageDstat              = 'dstat'
  $packageIftop              = 'iftop'
  $packageIotop              = 'iotop'
  $packageHtop               = 'htop'
  $packageNcftp              = 'ncftp'
  $packageNmap               = 'nmap'
  $packageRsync              = 'rsync'
  $packageScreen             = 'screen'
  $packageStrace             = 'strace'
  $packageTree               = 'tree'
  $packageUnzip              = 'unzip'
  $packageWget               = 'wget'

  # Config definition
  $configProfileConf         = '/etc/profile.d/custom.sh'
  $configProfileConfTemplate = 'style/etc/profile.d/custom.sh.erb'
}

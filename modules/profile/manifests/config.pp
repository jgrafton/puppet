class profile::config {
  $user='jgrafton'

  case $::operatingsystem {
    darwin: {
      include profile::config_osx
    }
    solaris: { 
      include profile::config_solaris
    }
    debian: {
      include profile::config_linux
    }
    centOS: {
      include profile::config_linux
    }
    default: { 
      include profile::config_linux
    }
  }
}
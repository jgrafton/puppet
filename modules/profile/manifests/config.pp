# profile::config
# configure login profile for users
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
    centos: {
      include profile::config_linux
    }
    freebsd: {
      include profile::config_freebsd
    }
    default: {
    }
  }
}

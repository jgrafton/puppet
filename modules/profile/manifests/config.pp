# profile::config
# configure login profile for users
class profile::config {
  $user='jgrafton'

  case $::operatingsystem {
    Darwin: {
      include profile::config_osx
    }
    Solaris: {
      include profile::config_solaris
    }
    Debian: {
      include profile::config_linux
    }
    CentOS: {
      include profile::config_linux
    }
    FreeBSD: {
      include profile::config_freebsd
    }
    default: {
    }
  }
}

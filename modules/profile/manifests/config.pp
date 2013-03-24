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
    Default: { 
      include profile::config_linux
    }
  }
}
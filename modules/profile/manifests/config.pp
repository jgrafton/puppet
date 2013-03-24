class profile::config {
  $user='jgrafton'

  case $::operatingsystem {
    Darwin: {
      include profile::config_osx
    }
    Solaris: { 
      include profile::config_solaris
    }
    Default: { 
      include profile::config_linux
    }
  }
}
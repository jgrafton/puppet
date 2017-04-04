# users::config
class users::config {
  case $::operatingsystem {
    Darwin: {
    }
    Debian: {
    }
    FreeBSD: {
    }
    default: {
      #      user { 'jgrafton':
      #  ensure => present,
      #  shell  => '/bin/bash',
      #}
    }
  }
}

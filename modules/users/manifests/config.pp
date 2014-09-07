# users::config
class users::config {
  case $::operatingsystem {
    darwin: {
    }
    default: {
      user { 'jgrafton':
        ensure => present,
        shell  => '/bin/bash',
      }
    }
  }
}

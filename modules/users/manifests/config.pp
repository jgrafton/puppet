# users::config
class users::config {
  case $::operatingsystem {
    darwin: {
    }
    debian: {
    }
    freebsd: {
    }
    default: {
      user { 'jgrafton':
        ensure => present,
      }
    }
  }
}

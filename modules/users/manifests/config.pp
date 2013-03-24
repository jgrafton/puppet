class users::config {
  case $::operatingsystem {
    Darwin: '' {

    }
    Default: '' {
      user { "jgrafton":
        ensure => present,
        shell  => "/bin/bash",
      }
    }
  }
}
class users::config {
  case $::operatingsystem {
    Darwin: '' {
      $passingtime='blah'
    }
    Default: '' {
      user { "jgrafton":
        ensure => present,
        shell  => "/bin/bash",
      }
    }
  }
}
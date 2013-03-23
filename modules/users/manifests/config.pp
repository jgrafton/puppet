class users::config {
  user { "jgrafton":
    ensure => present,
    shell  => "/bin/bash",
  }
}
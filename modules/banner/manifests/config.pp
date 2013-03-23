class banner::config {
  file { '/etc/motd':
    owner => root,
    group => root,
    mode  => 0644,
    content => template('banner/motd.erb'),
  }
}
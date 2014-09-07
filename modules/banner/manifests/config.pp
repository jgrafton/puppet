# banner::config
# configure banner for most hosts
class banner::config {
  file { '/etc/motd':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('banner/motd.erb'),
  }
}

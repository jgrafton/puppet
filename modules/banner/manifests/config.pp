# banner::config
# configure banner for most hosts
class banner::config {
  file { '/etc/motd':
    owner   => 'root',
    group   => 'wheel',
    mode    => '0644',
    content => template('banner/motd.erb'),
  }
}

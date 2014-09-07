# banner::config_raspberrypi
# configure a login banner for the raspberry pi
class banner::config_raspberrypi {
  file { '/etc/motd':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('banner/motd_raspberrypi.erb'),
  }
}

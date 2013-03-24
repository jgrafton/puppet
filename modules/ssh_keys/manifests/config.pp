class ssh_keys::config {
  $user = 'jgrafton'

  case $::operatingsystem {
    darwin: { $home_dir = "/Users/${user}" }
    default: { $home_dir = "/home/${user}" }
  }

  file { "${home_dir}/.ssh":
    ensure => directory,
  }

  file { "${home_dir}/.ssh/authorized_keys':
    ensure  => present,
    owner   => ${user},
    mode    => 0600,
    content => template('ssh_keys/authorized_keys.erb'),
  }
}
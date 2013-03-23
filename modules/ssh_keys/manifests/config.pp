class ssh_keys::config {
  file { '/home/jgrafton/.ssh':
    ensure => directory,
  }

  file { '/home/jgrafton/.ssh/authorized_keys':
    ensure  => present,
    owner   => jgrafton,
    group   => jgrafton,
    mode    => 0600,
    content => template('ssh_keys/authorized_keys.erb'),
  }
}
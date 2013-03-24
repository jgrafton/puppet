class profile::config_solaris {
  $user='jgrafton'

  file {"/home/${user}/.bash_profile":
    ensure  => present,
    require => User[$user],
    mode    => 0644,
    owner   => jgrafton,
    source  => 'puppet:///modules/profile/bash_profile_solaris',
  }

  file {"/home/${user}/.screenrc":
    ensure  => present,
    require => User[$user],
    mode    => 0644,
    owner   => jgrafton,
    source  => 'puppet:///modules/profile/screenrc',
  }

  file {"/home/${user}/.vimrc":
    ensure  => present,
    require => User[$user],
    mode    => 0644,
    owner   => jgrafton,
    source  => 'puppet:///modules/profile/vimrc',
  }
}
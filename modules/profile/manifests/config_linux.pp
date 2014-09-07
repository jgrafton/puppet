# profile::config_linux
# configure profile for linux systems
class profile::config_linux {
  $user='jgrafton'

  file {"/home/${user}/.bash_profile":
    ensure  => present,
    require => User[$user],
    mode    => '0644',
    owner   => $user,
    source  => 'puppet:///modules/profile/bash_profile_linux',
  }

  file {"/home/${user}/.screenrc":
    ensure  => present,
    require => User[$user],
    mode    => '0644',
    owner   => $user,
    source  => 'puppet:///modules/profile/screenrc',
  }

  file {"/home/${user}/.vimrc":
    ensure  => present,
    require => User[$user],
    mode    => '0644',
    owner   => $user,
    source  => 'puppet:///modules/profile/vimrc',
  }
}

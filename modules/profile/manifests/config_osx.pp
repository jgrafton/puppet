# profile::config_osx
# configure profile for OSX
class profile::config_osx {
  $user='jgrafton'

  file {"/Users/${user}/.bash_profile":
    ensure  => present,
    mode    => '0644',
    owner   => $user,
    source  => 'puppet:///modules/profile/bash_profile_osx'
  }

  file {"/Users/${user}/.screenrc":
    ensure  => present,
    mode    => '0644',
    owner   => $user,
    source  => 'puppet:///modules/profile/screenrc',
  }

  file {"/Users/${user}/.vimrc":
    ensure  => present,
    mode    => '0644',
    owner   => $user,
    source  => 'puppet:///modules/profile/vimrc',
  }

}

class profile::config_osx {
  $user='jgrafton'

  file {"/Users/${home}/.bash_profile":
    ensure  => present,
    mode    => 0644,
    owner   => jgrafton,
    source  => 'puppet://modules/profile/bash_profile_osx'
  }

  file {"${home_dir}/.screenrc":
    ensure  => present,
    #require => User[$user],
    mode    => 0644,
    owner   => jgrafton,
    source  => "puppet:///modules/profile/screenrc",
  }

  file {"${home_dir}/.vimrc":
    ensure  => present,
    #require => User[$user],
    mode    => 0644,
    owner   => jgrafton,
    source  => "puppet:///modules/profile/vimrc",
  }

}
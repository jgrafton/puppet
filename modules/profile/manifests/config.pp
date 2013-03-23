class profile::config {
  $user='jgrafton'

  case $::operatingsystem {
    Darwin: { $home_dir="/Users/${user}" }
    Solaris: { $home_dir="/home/${user}" }
    Debian: { $home_dir="/home/${user}" }
    Debian: { $home_dir="/home/${user}" }
    CentOS: { $home_dir="/home/${user}" }
    Default: { $home_dir="/home/${user}" }
  }

  file {"${home_dir}/.bash_profile":
    ensure  => present,
    require => User[$user],
    source  => "puppet:///modules/profile/bash_profile",
  }

  file {"${home_dir}/.screenrc":
    ensure  => present,
    require => User[$user],
    source  => "puppet:///modules/profile/screenrc",
  }

  file {"${home_dir}/.vimrc":
    ensure  => present,
    require => User[$user],
    source  => "puppet:///modules/profile/vimrc",
  }

}
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
    ensure => present,
    require => User[$user],
    source => template('profile/bash_profile.erb'),
  }

  file {"${home_dir}/${user}/.screenrc":
    ensure => present,
    require => User[$user],
    source => template('profile/screenrc.erb'),
  }

  file {"${home_dir}/${user}/.vimrc":
    ensure => present,
    require => User[$user],
    source => template('profile/vimrc.erb'),
  }

}
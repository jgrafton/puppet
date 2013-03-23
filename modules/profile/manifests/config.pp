class profile::config {
  $user='jgrafton'

  case $::operatingsystem {
    Darwin: { 
      $home_dir="/Users/${user}"
      $bash_profile="puppet:///modules/profile/bash_profile_osx"
    }
    Solaris: { 
      $home_dir="/home/${user}" 
      $bash_profile="puppet:///modules/profile/bash_profile_solaris"
    }
    Debian: { 
      $home_dir="/home/${user}" 
      $bash_profile="puppet:///modules/profile/bash_profile_linux"
    }
    Debian: { 
      $home_dir="/home/${user}" 
      $bash_profile="puppet:///modules/profile/bash_profile_linux"
    }
    CentOS: { 
      $home_dir="/home/${user}" 
      $bash_profile="puppet:///modules/profile/bash_profile_linux"
    }
    Default: { 
      $home_dir="/home/${user}" 
      $bash_profile="puppet:///modules/profile/bash_profile_linux"
    }
  }

  file {"${home_dir}/.bash_profile":
    ensure  => present,
    require => User[$user],
    mode    => 0644,
    owner   => jgrafton,
    source  => $bash_profile,
  }

  file {"${home_dir}/.screenrc":
    ensure  => present,
    require => User[$user],
    mode    => 0644,
    owner   => jgrafton,
    source  => "puppet:///modules/profile/screenrc",
  }

  file {"${home_dir}/.vimrc":
    ensure  => present,
    require => User[$user],
    mode    => 0644,
    owner   => jgrafton,
    source  => "puppet:///modules/profile/vimrc",
  }

}
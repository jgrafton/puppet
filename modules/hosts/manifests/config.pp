# hosts::config
# configure /etc/hosts file
class hosts::config {

  # amazon cloud
  host { 'graymatterboundaries.amazon':
    ip           => '50.18.123.241',
    host_aliases => 'gmb',
  }

  # joyent cloud
  host { 'grayson.joyent':
    ip           => '8.19.35.37',
    host_aliases => 'grayson',
  }

  # gateway
  host { 'gateway.tino':
    ip           => '192.168.1.1',
    host_aliases => 'gateway',
  }

  # pod
  host { 'pod.tino':
    ip           => '192.168.1.10',
    host_aliases => 'pod',
  }

  # macbook pro
  host { 'macbookpro.tino':
    ip           => '192.168.1.13',
    host_aliases => 'macbookpro',
  }

  # orion
  host { 'orion.tino':
    ip           => '192.168.1.17',
    host_aliases => 'orion',
  }

  # raspberrypi
  host { 'raspberrypi.tino':
    ip           => '192.168.1.64',
    host_aliases => 'raspberrypi',
  }

  # sebian
  host { 'sebian.tino':
    ip           => '192.168.1.65',
    host_aliases => 'sebian',
  }

  # shell
  host { 'shell.tino':
    ip           => '192.168.1.197',
    host_aliases => 'shell',
  }

  # webdav
  host { 'webdav.tino':
    ip           => '192.168.1.198',
    host_aliases => 'webdav',
  }

  # storhost
  host { 'storhost.tino':
    ip           => '192.168.1.199',
    host_aliases => 'storhost',
  }

  # megaman
  host { 'megaman.tino':
    ip           => '192.168.1.201',
    host_aliases => 'megaman',
  }

  # centos
  host { 'centos.tino':
    ip           => '192.168.1.202',
    host_aliases => 'centos',
  }

  # debian
  host { 'debian.tino':
    ip           => '192.168.1.203',
    host_aliases => 'debian',
  }

  # openindiana
  host { 'oi.tino':
    ip           => '192.168.1.204',
    host_aliases => 'oi',
  }

  # Sara's iMac
  host { 'saramac.tino':
    ip           => '192.168.1.57',
    host_aliases => 'saramac',
  }
}

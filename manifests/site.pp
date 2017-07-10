# Puppet nodes for grafton household

# base class
class base {
  include banner
	class { 'accounts':
    ssh_keys   => hiera_hash('accounts::ssh_keys', {}),
    users      => hiera_hash('accounts::users', {}),
    usergroups => hiera_hash('accounts::usergroups', {}),
	}
  file {'/tmp/example-ip':
    ensure  => present,
    mode    => '0644',
    content => "Here is my IP: ${ipaddress}.\n",
  }
# include ssh_keys
# include profile
# include users
}

### cloud vms
# joyent cloud
node /6dab87a4-e83e-4f9f-8748-48ff53056070.*/ {
  include ssh_keys
  include base
}

### physical workstations
# pod debian linux workstation
node /pod/ {
  include base
  include ssh_keys
}

# macbook pro
node /.*macbook.*/ {
  include base
}

# Sara's iMac
node /saramac.*/ {
  include base
  include ssh_keys
}

# raspberrypi
node /raspberrypi.*/ {
  include base
  include ssh_keys
}

node default {
  include base
}



class base {
  include banner
  include profile
  include users
  include hosts
}

### cloud vms
# amazon cloud
node /ip-10-170-22-206/ {
  include ssh_keys
  include base
}

# joyent cloud
node /6dab87a4-e83e-4f9f-8748-48ff53056070.*/ {
  include ssh_keys
  include base
}

### home vms
# joyent smartos zone on orion
node /megaman.*/ {
  include ssh_keys
  include base
}

# squeeze vm on Sara's iMac
node /sebian.*/ {
  include ssh_keys
  include base
  include ganglia
  include ganglia::client
}

# squeeze vm on orion
#node /cd030bbc-9b21-4341-8be4-5d9f3241b7e9/ {
node /ldap.*/ {
  include ssh_keys
  include base
  include ganglia
  include ganglia::server
  include ganglia::webserver
}

# centos vm on orion
#node /cd030bbc-9b21-4341-8be4-5d9f3241b7e9/ {
node /161884f4-7a94-4050-bcc4-53ad5d205a87.*/ {
  include ssh_keys
  include base
  include ganglia
  include ganglia::client
}

# openindiana vm on orion
node /oi.*/ {
  include ssh_keys
  include base
}

### physical workstations
# pod ubuntu workstation
node /pod.*/ {
  include base
  include ssh_keys
  include ganglia
  include ganglia::client 
}

# macbook pro
node /.*macbook.*/ {
  include base
}

# raspberrypi
node /raspberrypi.*/ {
  include base  
  include ssh_keys
  include ganglia
  include ganglia::client
}
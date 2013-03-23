class base {
  include banner
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
}

# squeeze vm on orion
#node /cd030bbc-9b21-4341-8be4-5d9f3241b7e9/ {
node /ldap.*/ {
  include ssh_keys
  include base
}

# openindiana vm on orion
node /oi.*/ {
  include ssh_keys
  include base
}

### physical workstations
# pod ubuntu workstation
node /pod.*/ {
  include hosts
  include ssh_keys
  include base
}

# macbook pro
node /graftons-macbook-pro.*/ {
  include hosts
  include base
}
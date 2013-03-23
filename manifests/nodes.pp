class base {
  include ssh_keys
  include banner
}


### cloud vms
# amazon web start cloud
node /ip-10-170-22-206/ {
  include base
}

### home vms
# joyent smartos zone on orion
node /megaman.*/ {
  include base
}

# squeeze vm on Sara's iMac
node /sebian.*/ {
  include base
}

# squeeze vm on orion
#node /cd030bbc-9b21-4341-8be4-5d9f3241b7e9/ {
node /ldap.*/ {
  include base
}


### physical workstations
# pod ubuntu workstation
node /pod.*/ {
  include base
}

# macbook pro
node /graftons-macbook-pro.*/ {
  include base
}
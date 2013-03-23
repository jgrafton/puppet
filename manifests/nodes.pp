class base {
  #include graftons
  include banner
}

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
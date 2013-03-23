class base {
  #include graftons
  include banner
}

# joyent smartos zone on orion
node /megaman.*/ {
  include base
}

# debian virtual machine on Sara's iMac
node /sebian.*/ {
  include base
}
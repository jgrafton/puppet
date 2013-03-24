class banner {
  case $::hardwaremodel {
    armv61: {
      include banner::config_raspberrypi
    }
    default: {
      include banner::config
    }
  }
}
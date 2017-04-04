# banner::init
class banner {
  case $::hardwaremodel {
    armv6l: {
      include banner::config_raspberrypi
    }
    armv7l: {
      include banner::config_raspberrypi
    }
    default: {
      include banner::config
    }
  }
}

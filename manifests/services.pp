# Class ntp::service
#
#
class ntp::service inherits ntp {
  # manage service 
  service { $service_name:
    ensure => $service_ensure,
    enable => $service_enable,
  }
}

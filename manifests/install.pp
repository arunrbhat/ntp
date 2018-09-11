# Class ntp::install
#
#
class ntp::install inherits ntp {
  # package install 
  package { $package_name:
    ensure   => $package_ensure,
    provider => $package_provider,
  }
}

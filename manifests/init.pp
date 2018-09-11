# Class: ntp
#
#
class ntp(
  $package_name = 'ntp',
  $package_ensure = 'present',
  $package_provider = 'yum',
  $file_ensure = 'present',
  $file_path = '/etc/ntp.conf',
  $file_source = '/tmp/ntp.conf',
  $service_name = 'ntpd',
  $service_ensure = 'running',
  $service_enable = true,
) {
 # include classes
  include ::ntp::intall
  include ::ntp::config
  include ::ntp::service
  
  # module relationship
  Class['::ntp::install']
  -> Class['::ntp::config']
  ~> Class['::ntp::service']
}

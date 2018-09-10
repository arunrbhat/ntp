# Class NTP
#
#
#
class ntp (
  $package_ensure = 'present',
  $source_file = '/tmp/ntp.conf',
  $ensure_services  = 'running',
){
  # package install 
  package { 'ntp':
    ensure   => $package_ensure,
    provider => 'yum',
  }
  # confi files
  file { '/etc/ntp.conf':
    ensure => 'present',
    source => $source_file,
  }
  # manage service 
  service { 'ntpd':
    ensure => $ensure_services,
    enable => true,
  }
}

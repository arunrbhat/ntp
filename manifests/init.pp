# Class NTP
#
#
#
class ntp (
  $package_ensure = 'present',
){
  # package install 
  package { 'ntp':
    ensure   => $package_ensure,
    provider => 'yum',
  }
  # confi files
  file { '/etc/ntp.conf':
    ensure => 'present',
    source => '/tmp/ntp.conf',
  }
  # manage service 
  service { 'ntpd':
    ensure => 'running',
    enable => true,
  }
}

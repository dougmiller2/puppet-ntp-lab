class ntp_lab::params {
  $package_name       = ‘ntp_lab’
  $package_ensure     = ‘present’
  $config_name        = ‘ntp_lab.conf’
  $config_file_mode   = ‘0664’
  $servers            = [‘0.centos.pool.ntp.org’, ‘1.centos.pool.ntp.org’]
  $service_ensure     = ‘running’
  $service_enable     = true
  $service_hasrestart = true
  $service_hasstatus  = true
  $service_name       = $facts[‘os’][‘family’] ? {
    ‘Debian’ => ‘ntp’,
    default  => ‘ntpd’,
  }
}

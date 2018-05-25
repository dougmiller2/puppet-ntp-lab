class ntp_lab(
  String  $package_name       = $ntp_lab::params::package_name,
  String  $package_ensure     = $ntp_lab::params::package_ensure,
  String  $config_name        = $ntp_lab::params::config_name,
  String  $config_file_mode   = $ntp_lab::params::config_file_mode,
  Array[String] $servers      = $ntp_lab::params::servers,
  String  $service_ensure     = $ntp_lab::params::service_ensure,
  String  $service_name       = $ntp_lab::params::service_name,
  Boolean $service_enable     = $ntp_lab::params::service_enable,
  Boolean $service_hasrestart = $ntp_lab::params::service_hasrestart,
  Boolean $service_hasstatus  = $ntp_lab::params::service_hasstatus,
) inherits ::ntp_lab::params {
  class { ‘::ntp_lab::install’: }
  -> class { ‘::ntp_lab::config’: }
  ~> class { ‘::ntp_lab::service’: }
}

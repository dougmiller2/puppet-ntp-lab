class ntp_lab::service(
  String  $service_name       = $ntp_lab::service_name,
  String  $service_ensure     = $ntp_lab::service_ensure,
  Boolean $service_enable     = $ntp_lab::service_enable,
  Boolean $service_hasstatus  = $ntp_lab::service_hasstatus,
  Boolean $service_hasrestart = $ntp_lab::service_hasrestart,
) {
  service { ‘ntp_lab’:
    ensure     => $service_ensure,
    enable     => $service_enable,
    name       => $service_name,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
  }
}

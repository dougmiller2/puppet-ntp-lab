class ntp_lab::install(
  String $package_name   = $ntp_lab::package_name,
  String $package_ensure = $ntp_lab::package_ensure,
) {
  package { $package_name:
    ensure => $package_ensure,
  }
}

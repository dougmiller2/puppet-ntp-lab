class ntp_lab::config(
  String $config_name      = $ntp_lab::config_name,
  String $config_file_mode = $ntp_lab::config_file_mode,
  Array[String] $servers   = $ntp_lab::servers,
) {
  file { "/etc/${config_name}":
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => $config_file_mode,
    content => template("$module_name/ntp_lab.conf.erb")
  }
}

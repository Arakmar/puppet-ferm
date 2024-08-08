class ferm::params {
  $ferm_dir = '/etc/ferm'
  $default_input_policy = 'DROP'
  $default_output_policy = 'ACCEPT'
  $default_allow_ssh  = true
  $default_allow_icmp = true
  $default_allow_forwarding = true

  case $facts['os']['family'] {
    'Debian': {
      $ferm_config = '/etc/ferm/ferm.conf'
    }
    'RedHat': {
      $ferm_config = '/etc/ferm.conf'
    }
    'Archlinux': {
      $ferm_config = '/etc/ferm.conf'
    }
    default: {
    }
  }
}

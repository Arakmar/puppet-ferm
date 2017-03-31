class ferm::params {
  $ferm_dir = '/etc/ferm'
  $default_input_policy = 'DROP'
  $default_output_policy = 'ACCEPT'
  $default_allow_ssh  = true
  $default_allow_icmp = true

  case $::osfamily {
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

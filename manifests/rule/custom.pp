define ferm::rule::custom (
  $content = undef,
  $source  = undef,
  $prio    = "50",
) {
  file { "/etc/ferm/rules.d/${prio}_${name}":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0400',
    content => $content,
    source  => $source,
    notify  => Service['ferm'];
  }
}

 define ferm::rule
 (
	$host = false,
	$interface = undef,
	$table="filter",
	$chain="INPUT",
	$rules,
	$description="",
	$domain = "ip",
	$prio="00"
 ) 
 {
	file { "${ferm::ferm_dir}/rules.d/${prio}_${name}":
		ensure  => present,
		owner   => root,
		group   => root,
		mode    => '0400',
		content => template("ferm/ferm-rule.erb"),
		notify  => Service['ferm'];
	}
}

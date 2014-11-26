class facts( $branch = '' )

  { 
  file{ "/etc/facter/facts.d/external_facts.txt":
  ensure => file,
  mode => 644,
  owner => root,
  group => root,
  content => template('facts/external_facts.txt.erb')
  }
}

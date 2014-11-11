class bootstrap {
  service { "sshd":
    ensure => running,
  }
  
  group { "www":
    ensure => present,
    gid => 10000,
  } 

  user { "www":
    ensure => present,
    uid => 10000,
    gid => "www",
    require => Group["www"],
  }

  file { "/home/www":
    ensure => directory,
    owner => www,
    group => www,
    mode => 755,
    require => User["www"], 
  } 
  
  file { "/etc/resolve.conf":
    ensure => file,
    owner => root,
    group => root,
    mode => 644,
    source => 'puppet:///modules/bootstrap/resolve.conf',
  } 
  
}

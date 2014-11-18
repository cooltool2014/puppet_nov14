class motd {
     file { "/etc/motd":
     ensure => present,
     mode => 644,
     owner => root,
     group => root,
     content => template('motd/motd.erb')
   }
}

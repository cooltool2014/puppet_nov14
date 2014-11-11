class httpd (
    $servername = "test",
    $docroot = "/var/www/html/test",     
)

{
    package { "httpd":
      ensure => installed,
    }

    file { $docroot:
      ensure => directory,		
      mode => 755,
      owner => nobody,
      group => nobody
   }

   file { "/etc/httpd/conf/httpd.conf":
     ensure => present,
     mode => 644,
     owner => root,
     group => root,
     content => template('httpd/httpd.conf.erb')
   }
}

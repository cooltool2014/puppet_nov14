node "puppetmaster" {
 package { "vim-enhanced": ensure => installed,}
 service { "iptables": enable => false,}
 class { "httpd": docroot => "/var/www/html/serverdoc" } 
}

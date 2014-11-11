node "puppetmaster" {
 package { "vim-enhanced": ensure => installed,}
 service { "iptables": enable => false,}
}

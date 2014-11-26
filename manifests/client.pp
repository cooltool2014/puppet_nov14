node "puppetcnt1" {
 include bootstrap
 include cronservices
 class { "facts": branch => "prod1"}  
 include hosts
 include motd
 class { "httpd": docroot => "/var/www/html/clientroot", servername => "www.client.com" } 
# Class["hosts"] -> Class["motd"]
}

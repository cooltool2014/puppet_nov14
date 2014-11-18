node "puppetcnt1" {
 include bootstrap
 include cronservices
 include motd
 include hosts 
 class { "httpd": docroot => "/var/www/html/clientroot", servername => "www.client.com" } 
}

node "puppetcnt1" {
 include bootstrap
 class { "httpd": docroot => "/var/www/html/clientroot", servername => "www.client.com" } 
}

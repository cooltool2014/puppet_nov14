class cronservices{
  cron { logrotate:
    command => "/usr/sbin/logrotate",
    user    => root,
    hour    => 2,
    minute  => 0,
    ensure  => present
 }

 cron { backup:
   command => "/usr/bin/backup.sh",
   user => root,
   hour => 1,
   minute => 0,
   ensure => present
   }
}

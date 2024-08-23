# Increases nginx server power

exec { 'fix_nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

# Restart Nginx
exec { 'nginx-restart':
  command => 'sudo service nginx restart',
  path    => '/etc/init.d/'
}

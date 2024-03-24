# Instrall flask version 2.1.0
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => 'pip3 install Flask==2.1.0',
  path    => '/usr/bin/',
  unless  => 'pip3 show Flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],
}
exec {
  command => 'pip install werkzeug==2.1.1',
  path    => '/usr/bin/',
}

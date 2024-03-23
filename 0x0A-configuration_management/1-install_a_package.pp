# Installs flask version 2.1.0
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command  => '/usr/bin/pip3 install Flask==2.1.0',
  path     => '/usr/bin',
  unless   => '/usr/bin/flask --version | grep -q "Flask 2.1.0"',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

# Installs flask version 2.1.0
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command  => 'pip3 install flask',
  path     => '/usr/bin/',
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

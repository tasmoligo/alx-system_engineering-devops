# Enables the user holberton to login and open files without eny rror

# Increase hard file limit for user holberton
exec { 'increase_hard_file_limit':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

# Increase soft file limit for user holberton
exec { 'increase_soft_file_limit':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

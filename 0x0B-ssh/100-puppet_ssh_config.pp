# client SSH configuration file so that you can connect to a server without typing a password.

file_line { 'use_identity_file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '     IdentityFile ~/.ssh/school',
}
file_line { 'do_not_use_passwd_auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
}


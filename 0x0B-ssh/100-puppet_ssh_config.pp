# client SSH configuration file so that you can connect to a server without typing a password.

include stdlib

file_line { 'use_identity_file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '     IdentityFile ~/.ssh/school',
  replace => true,
}
file_line { 'do_not_use_passwd_auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}


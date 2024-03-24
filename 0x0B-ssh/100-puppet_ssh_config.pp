# set up your client SSH configuration file so that you
# can connect to a server without typing a password.

file_line { 'use private key':
    ensure  => present,
    path    => '/etc/ssh/sshd_config',
    line    => 'IdentityFile ~/.ssh/school',
}

file_line { 'disable password':
    ensure  => present,
    path    => '/etc/ssh/ssh_config',
    line    => 'PasswordAuthentication no',
}

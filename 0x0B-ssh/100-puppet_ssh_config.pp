# set up your client SSH configuration file so that you
# can connect to a server without typing a password.

file_line { 'use private key':
    ensure  => 'present',
    line    => 'IdentityFile ~/.ssh/school',
    path    => '/etc/ssh/sshd_config',
}

file_line { 'disable password':
    ensure  => 'present',
    line    => 'PasswordAuthentication no',
    path    => '/etc/ssh/sshd_config',
}

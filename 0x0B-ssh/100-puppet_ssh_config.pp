# set up your client SSH configuration file so that you
# can connect to a server without typing a password.

file_line { 'use private key':
    ensure  => present,
    line    => 'IdentityFile ~/.ssh/school',
<<<<<<< HEAD
    path    => '/etc/ssh/sshd_config',
=======
    path    => '/etc/ssh/ssh_config',
>>>>>>> 256e07974f8b5a625b6e4008a79314357b40f85d
}

file_line { 'disable password':
    ensure  => present,
    line    => 'PasswordAuthentication no',
<<<<<<< HEAD
    path    => '/etc/ssh/sshd_config',
=======
    path    => '/etc/ssh/ssh_config',
>>>>>>> 256e07974f8b5a625b6e4008a79314357b40f85d
}

# Creates a manifest that kills a process named killmenow.
exec { 'pkill killmenow':
  command => '/usr/bin/pkill killmenow',
  path    => '/usr/bin',
  onlyif  => '/usr/bin/pgrep killmenow',
}

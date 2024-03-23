# Creates a manifest that kills a process named killmenow.
exec { 'pkill killmenow':
  command => 'pkill killmenow',
  path    => '/usr/bin/',
  onlyif  => 'pgrep killmenow',
}

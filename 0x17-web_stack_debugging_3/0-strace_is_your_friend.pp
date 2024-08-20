# Puppet code to fix 500 error of apache.

exec { 'correct_name':
	command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
	path    => ['/bin', '/usr/bin'],
}

# fix 500 error of apache

exec { 'filename typo error':
	command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
	path => '/bin:/bin/usr'
}

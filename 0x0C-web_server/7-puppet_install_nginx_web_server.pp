# Install nginx using puppet
package { 'nginx':
        ensure => present;
}
exec { 'install nginx':
        command  => 'sudo apt-get update ; sudo apt-get -y install nginx',
        provider => shell,
}
exec { 'root file':
        command  => 'sudo echo "Hello World!" > /var/www/html/index.html',
        provider => shell,
}
exec { 'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https://github.com/tasmoligo\/;\\n\\t}/" /etc/nginx/sites-available/default':
        provider => shell,
}
exec { 'start nginx':
        command  => 'sudo service nginx start',
        provider => shell,
}

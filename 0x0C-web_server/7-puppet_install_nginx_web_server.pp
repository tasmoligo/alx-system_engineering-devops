# Install nginx using puppet
package { 'nginx':
        ensure => present;
}
exec { 'install nginx':
        command  => 'sudo apt-get update; sudo apt-get -y install nginx',
        provider => shell,
}
exec { 'root file':
        command  => 'echo "Hello World!" | sudo tee /var/www/html/index.html',
        provider => shell,
}
exec { 'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\nlocation \/redirect_me {\n\treturn 301 https:\/\/github.com;\n}/" /etc/nginx/sites-available/default':
        provider => shell,
}
exec { 'start nginx':
        command  => 'sudo service nginx restart',
        provider => shell,
}

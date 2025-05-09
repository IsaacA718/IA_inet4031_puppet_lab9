# Install Apache
package { 'apache2':
  ensure => installed,
}

# Install PHP and modules
package { 'php':
  ensure  => installed,
  notify  => Service['apache2'],
  require => Package['apache2'],
}

package { 'libapache2-mod-php':
  ensure  => installed,
  require => Package['php'],
}

package { 'php-cli':
  ensure  => installed,
  require => Package['php'],
}

package { 'php-mysql':
  ensure  => installed,
  require => Package['php'],
}

# Deploy phpinfo test file
file { '/var/www/html/phpinfo.php':
  source  => '/home/isaacxarika/IA_inet4031_puppet_lab9/phpinfo.php',
  notify  => Service['apache2'],
  require => Package['apache2'],
}

# Ensure Apache service is running and enabled
service { 'apache2':
  ensure  => running,
  enable  => true,
  require => [Package['apache2'], Package['php']],
}

package { 'mariadb-server':
  ensure => installed,
}

service { 'mariadb':
  ensure => running,
  enable => true,
  require => Package['mariadb-server'],
}

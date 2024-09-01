# Ensure that pip3 is installed before attempting to install Flask
package { 'python3-pip':
  ensure => installed,
}

# Use the 'exec' resource to install Flask version 2.1.0 via pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin', '/bin', '/usr/sbin', '/sbin'],
  unless  => '/usr/bin/pip3 show flask | grep Version | grep -q 2.1.0',
  require => Package['python3-pip'],
}

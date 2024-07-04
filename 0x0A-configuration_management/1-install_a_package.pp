# Puppet manifest to install Flask package from pip3

package { 'Flask':
  ensure => '2.1.0',
  provider => 'pip3',
  require => Exec['update-pip3'],
}

exec { 'update-pip3':
  command => 'pip3 install --upgrade pip',
  path    => '/usr/local/bin',
  creates => '/usr/local/bin/pip3',
}
